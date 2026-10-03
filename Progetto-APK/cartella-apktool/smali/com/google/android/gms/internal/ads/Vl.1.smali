.class public final synthetic Lcom/google/android/gms/internal/ads/Vl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/Vl;->G:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Vl;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/util/Map;)V
    .locals 8

    .line 1
    const-string v0, "Result GMSG: "

    .line 2
    .line 3
    const-string v1, "Received result for unexpected method invocation: "

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "fail"

    .line 14
    .line 15
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    const-string v4, "fail_reason"

    .line 22
    .line 23
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    const-string v5, "fail_stack"

    .line 30
    .line 31
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "result"

    .line 38
    .line 39
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ne v6, v7, :cond_0

    .line 51
    .line 52
    const-string v4, "Unknown Fail Reason."

    .line 53
    .line 54
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    const-string v5, ""

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "\n"

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v6

    .line 76
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Lcom/google/android/gms/internal/ads/W9;

    .line 85
    .line 86
    if-nez v7, :cond_2

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    monitor-exit v6

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_4

    .line 107
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_3

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/ads/W9;->c(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v6

    .line 132
    return-void

    .line 133
    :cond_3
    if-nez p1, :cond_4

    .line 134
    .line 135
    const/4 p1, 0x0

    .line 136
    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/ads/W9;->a(Lorg/json/JSONObject;)V

    .line 137
    .line 138
    .line 139
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    return-void

    .line 141
    :cond_4
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 142
    .line 143
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lo3/I;->m()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    const/4 p1, 0x2

    .line 153
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_0
    move-exception p1

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    :goto_1
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/W9;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/ads/W9;->c(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_3
    monitor-exit v6

    .line 187
    return-void

    .line 188
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    throw p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/W9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Vl;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 10
    .line 11
    const-string v0, "u"

    .line 12
    .line 13
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    move-object v9, p2

    .line 18
    check-cast v9, Ljava/lang/String;

    .line 19
    .line 20
    if-nez v9, :cond_0

    .line 21
    .line 22
    const-string p1, "URL missing from httpTrack GMSG."

    .line 23
    .line 24
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/google/android/gms/internal/ads/ix;

    .line 39
    .line 40
    invoke-virtual {p1, v9, v3}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Lcom/google/android/gms/internal/ads/cq;

    .line 47
    .line 48
    new-instance v0, LA0/w;

    .line 49
    .line 50
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 51
    .line 52
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->U()Lcom/google/android/gms/internal/ads/Qv;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    move-object v4, v0

    .line 69
    invoke-direct/range {v4 .. v9}, LA0/w;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/cq;->E(LA0/w;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p2, Lcom/google/android/gms/internal/ads/gn;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 83
    .line 84
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 85
    .line 86
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/gn;->i:Lcom/google/android/gms/internal/ads/Bh;

    .line 87
    .line 88
    monitor-enter p1

    .line 89
    :try_start_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Bh;->I:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Bh;->G:Lcom/google/android/gms/internal/ads/xh;

    .line 95
    .line 96
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/xh;->e:Lcom/google/android/gms/internal/ads/wh;

    .line 97
    .line 98
    const-string v2, "/updateActiveView"

    .line 99
    .line 100
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/xh;->f:Lcom/google/android/gms/internal/ads/wh;

    .line 104
    .line 105
    const-string v1, "/untrackActiveViewUnit"

    .line 106
    .line 107
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit p1

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p2

    .line 113
    monitor-exit p1

    .line 114
    throw p2

    .line 115
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Vl;->a(Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 120
    .line 121
    iget-object v0, p1, Lk3/l;->w:Lcom/google/android/gms/internal/ads/Qd;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_2
    const-string v0, "eventName"

    .line 136
    .line 137
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .line 143
    const-string v5, "eventId"

    .line 144
    .line 145
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    const-string v6, "_aa"

    .line 156
    .line 157
    const-string v7, "_ac"

    .line 158
    .line 159
    const-string v8, "_ai"

    .line 160
    .line 161
    const v9, 0x170bf

    .line 162
    .line 163
    .line 164
    const/4 v10, 0x2

    .line 165
    if-eq v5, v9, :cond_5

    .line 166
    .line 167
    const v9, 0x170c1

    .line 168
    .line 169
    .line 170
    if-eq v5, v9, :cond_4

    .line 171
    .line 172
    const v1, 0x170c7

    .line 173
    .line 174
    .line 175
    if-eq v5, v1, :cond_3

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    const/4 v1, 0x2

    .line 200
    goto :goto_2

    .line 201
    :cond_6
    :goto_1
    const/4 v1, -0x1

    .line 202
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 203
    .line 204
    if-eqz v1, :cond_9

    .line 205
    .line 206
    if-eq v1, v2, :cond_8

    .line 207
    .line 208
    if-eq v1, v10, :cond_7

    .line 209
    .line 210
    const-string p1, "logScionEvent gmsg contained unsupported eventName"

    .line 211
    .line 212
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    iget-object p1, p1, Lk3/l;->w:Lcom/google/android/gms/internal/ads/Qd;

    .line 217
    .line 218
    invoke-virtual {p1, v4, v6, p2, v3}, Lcom/google/android/gms/internal/ads/Qd;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_8
    check-cast v0, Ljava/util/Map;

    .line 223
    .line 224
    iget-object p1, p1, Lk3/l;->w:Lcom/google/android/gms/internal/ads/Qd;

    .line 225
    .line 226
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/Map;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Qd;->f(Ljava/util/Map;)Landroid/os/Bundle;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v1, "_ai"

    .line 240
    .line 241
    invoke-virtual {p1, v4, v1, p2, v0}, Lcom/google/android/gms/internal/ads/Qd;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_9
    check-cast v0, Ljava/util/Map;

    .line 246
    .line 247
    iget-object p1, p1, Lk3/l;->w:Lcom/google/android/gms/internal/ads/Qd;

    .line 248
    .line 249
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/util/Map;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Qd;->f(Ljava/util/Map;)Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-string v1, "_ac"

    .line 263
    .line 264
    invoke-virtual {p1, v4, v1, p2, v0}, Lcom/google/android/gms/internal/ads/Qd;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    .line 266
    .line 267
    :goto_3
    return-void

    .line 268
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Lcom/google/android/gms/internal/ads/Ok;

    .line 271
    .line 272
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 273
    .line 274
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/M9;->b(Ljava/util/Map;Lcom/google/android/gms/internal/ads/Ok;)V

    .line 275
    .line 276
    .line 277
    const-string v0, "u"

    .line 278
    .line 279
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Ljava/lang/String;

    .line 284
    .line 285
    if-nez p2, :cond_a

    .line 286
    .line 287
    const-string p1, "URL missing from click GMSG."

    .line 288
    .line 289
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Lcom/google/android/gms/internal/ads/oh;

    .line 296
    .line 297
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/M9;->a(Lcom/google/android/gms/internal/ads/Ef;Ljava/lang/String;)LD4/b;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    new-instance v3, Lcom/google/android/gms/internal/ads/J9;

    .line 306
    .line 307
    invoke-direct {v3, v0, p2, v1}, Lcom/google/android/gms/internal/ads/J9;-><init>(Lcom/google/android/gms/internal/ads/oh;Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    sget-object p2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 311
    .line 312
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Lcom/google/android/gms/internal/ads/L9;

    .line 317
    .line 318
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/L9;-><init>(Lcom/google/android/gms/internal/ads/Ef;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 322
    .line 323
    .line 324
    :goto_4
    return-void

    .line 325
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Vl;->H:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p1, Lcom/google/android/gms/internal/ads/Wl;

    .line 328
    .line 329
    :try_start_1
    const-string v0, "timestamp"

    .line 330
    .line 331
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 338
    .line 339
    .line 340
    move-result-wide v0

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Wl;->L:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :catch_0
    const-string v0, "Failed to call parse unconfirmedClickTimestamp."

    .line 349
    .line 350
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vl;->I:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lcom/google/android/gms/internal/ads/z9;

    .line 356
    .line 357
    const-string v1, "id"

    .line 358
    .line 359
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Ljava/lang/String;

    .line 364
    .line 365
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/Wl;->K:Ljava/lang/String;

    .line 366
    .line 367
    const-string p1, "asset_id"

    .line 368
    .line 369
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Ljava/lang/String;

    .line 374
    .line 375
    if-nez v0, :cond_b

    .line 376
    .line 377
    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    .line 378
    .line 379
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_b
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catch_1
    move-exception p1

    .line 395
    const-string p2, "#007 Could not call remote method."

    .line 396
    .line 397
    invoke-static {p2, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 398
    .line 399
    .line 400
    :goto_6
    return-void

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
