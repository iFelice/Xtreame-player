.class public final Lcom/google/android/gms/internal/ads/rr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Kw;

.field public final b:Lcom/google/android/gms/internal/ads/rj;

.field public final c:Lcom/google/android/gms/internal/ads/hx;

.field public final d:Lcom/google/android/gms/internal/ads/ix;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Lcom/google/android/gms/internal/ads/zi;

.field public final h:Lcom/google/android/gms/internal/ads/mr;

.field public final i:Lcom/google/android/gms/internal/ads/uq;

.field public final j:Landroid/content/Context;

.field public final k:Lcom/google/android/gms/internal/ads/Tw;

.field public final l:Lcom/google/android/gms/internal/ads/br;

.field public final m:Lcom/google/android/gms/internal/ads/Cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/mr;Lcom/google/android/gms/internal/ads/rj;Lcom/google/android/gms/internal/ads/hx;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/uq;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Cn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rr;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/mr;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rr;->b:Lcom/google/android/gms/internal/ads/rj;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rr;->c:Lcom/google/android/gms/internal/ads/hx;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/rr;->d:Lcom/google/android/gms/internal/ads/ix;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/zi;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/rr;->e:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/rr;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/rr;->i:Lcom/google/android/gms/internal/ads/uq;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/rr;->k:Lcom/google/android/gms/internal/ads/Tw;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/rr;->l:Lcom/google/android/gms/internal/ads/br;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/rr;->m:Lcom/google/android/gms/internal/ads/Cn;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/Tv;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a5:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "No fill."

    .line 19
    .line 20
    if-eq v2, v0, :cond_0

    .line 21
    .line 22
    const-string v0, "No ad config."

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v3

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/ads/Qv;

    .line 31
    .line 32
    iget v2, v2, Lcom/google/android/gms/internal/ads/Qv;->f:I

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    const/16 v4, 0xc8

    .line 37
    .line 38
    const/16 v5, 0x12c

    .line 39
    .line 40
    if-lt v2, v4, :cond_1

    .line 41
    .line 42
    if-ge v2, v5, :cond_1

    .line 43
    .line 44
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Z4:Lcom/google/android/gms/internal/ads/J7;

    .line 45
    .line 46
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-lt v2, v5, :cond_2

    .line 62
    .line 63
    const/16 v0, 0x190

    .line 64
    .line 65
    if-ge v2, v0, :cond_2

    .line 66
    .line 67
    const-string v3, "No location header to follow redirect or too many redirects."

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string v0, "Received error HTTP response code: "

    .line 71
    .line 72
    invoke-static {v0, v2}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move-object v3, v0

    .line 78
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lcom/google/android/gms/internal/ads/Qv;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Qv;->j:Lcom/google/android/gms/internal/ads/J;

    .line 85
    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/J;->H:Ljava/lang/String;

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_4
    return-object v3
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    check-cast v8, Lcom/google/android/gms/internal/ads/Tv;

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/Wc;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/rr;->m:Lcom/google/android/gms/internal/ads/Cn;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->V1:Lcom/google/android/gms/internal/ads/J7;

    .line 45
    .line 46
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/rr;->m:Lcom/google/android/gms/internal/ads/Cn;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 63
    .line 64
    const-string v2, "rendering-start"

    .line 65
    .line 66
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 67
    .line 68
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 69
    .line 70
    invoke-static {v3, v0, v2}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/rr;->a(Lcom/google/android/gms/internal/ads/Tv;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/rr;->i:Lcom/google/android/gms/internal/ads/uq;

    .line 78
    .line 79
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v3, Lcom/google/android/gms/internal/ads/Qv;

    .line 84
    .line 85
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/uq;->d:Lcom/google/android/gms/internal/ads/Qv;

    .line 86
    .line 87
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->E7:Lcom/google/android/gms/internal/ads/J7;

    .line 88
    .line 89
    iget-object v3, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v3, 0x3

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Lcom/google/android/gms/internal/ads/Qv;

    .line 109
    .line 110
    iget v2, v2, Lcom/google/android/gms/internal/ads/Qv;->f:I

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    const/16 v4, 0xc8

    .line 115
    .line 116
    if-lt v2, v4, :cond_2

    .line 117
    .line 118
    const/16 v4, 0x12c

    .line 119
    .line 120
    if-lt v2, v4, :cond_3

    .line 121
    .line 122
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/qr;

    .line 123
    .line 124
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_3
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 138
    .line 139
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->o3:Lcom/google/android/gms/internal/ads/J7;

    .line 140
    .line 141
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    const/4 v2, 0x1

    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Qv;->q:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_6

    .line 163
    .line 164
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/rr;->i:Lcom/google/android/gms/internal/ads/uq;

    .line 165
    .line 166
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 169
    .line 170
    move-object v5, v0

    .line 171
    check-cast v5, Ljava/util/List;

    .line 172
    .line 173
    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/uq;->b:Ljava/util/Map;

    .line 175
    .line 176
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_4

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/uq;->b:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Ll3/g1;

    .line 190
    .line 191
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/uq;->a:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/uq;->a:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    goto :goto_3

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_2
    const-string v9, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry"

    .line 207
    .line 208
    sget-object v10, Lk3/l;->A:Lk3/l;

    .line 209
    .line 210
    iget-object v10, v10, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 211
    .line 212
    invoke-virtual {v10, v9, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/uq;->b:Ljava/util/Map;

    .line 216
    .line 217
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_5

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Lcom/google/android/gms/internal/ads/Ov;

    .line 235
    .line 236
    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/internal/ads/uq;->c(Lcom/google/android/gms/internal/ads/Ov;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    .line 238
    .line 239
    add-int/lit8 v6, v6, 0x1

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    :goto_2
    monitor-exit v4

    .line 243
    goto :goto_5

    .line 244
    :goto_3
    monitor-exit v4

    .line 245
    throw v0

    .line 246
    :cond_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Ljava/util/List;

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_9

    .line 261
    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    move-object v10, v1

    .line 267
    check-cast v10, Lcom/google/android/gms/internal/ads/Ov;

    .line 268
    .line 269
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->i:Lcom/google/android/gms/internal/ads/uq;

    .line 270
    .line 271
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/uq;->a:Ljava/util/List;

    .line 272
    .line 273
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    invoke-virtual {v1, v10, v4}, Lcom/google/android/gms/internal/ads/uq;->c(Lcom/google/android/gms/internal/ads/Ov;I)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/Ov;->a:Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_8

    .line 291
    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Ljava/lang/String;

    .line 297
    .line 298
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/zi;

    .line 299
    .line 300
    iget v6, v10, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 301
    .line 302
    invoke-interface {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zi;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/pq;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    if-eqz v4, :cond_7

    .line 307
    .line 308
    invoke-interface {v4, v8, v10}, Lcom/google/android/gms/internal/ads/pq;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_7

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_8
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/rr;->i:Lcom/google/android/gms/internal/ads/uq;

    .line 316
    .line 317
    const/4 v1, 0x0

    .line 318
    invoke-static {v2, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    const/4 v14, 0x0

    .line 323
    const-wide/16 v11, 0x0

    .line 324
    .line 325
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/uq;->d(Lcom/google/android/gms/internal/ads/Ov;JLl3/z0;Z)V

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_9
    :goto_5
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/rr;->b:Lcom/google/android/gms/internal/ads/rj;

    .line 330
    .line 331
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->d:Lcom/google/android/gms/internal/ads/ix;

    .line 332
    .line 333
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/rr;->c:Lcom/google/android/gms/internal/ads/hx;

    .line 334
    .line 335
    new-instance v5, Lcom/google/android/gms/internal/ads/qh;

    .line 336
    .line 337
    invoke-direct {v5, v8, v1, v4}, Lcom/google/android/gms/internal/ads/qh;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/hx;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->e:Ljava/util/concurrent/Executor;

    .line 341
    .line 342
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/mI;->Y0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 350
    .line 351
    iget v0, v0, Lcom/google/android/gms/internal/ads/Qv;->r:I

    .line 352
    .line 353
    if-le v0, v2, :cond_a

    .line 354
    .line 355
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/rr;->l:Lcom/google/android/gms/internal/ads/br;

    .line 356
    .line 357
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/br;->a(Lcom/google/android/gms/internal/ads/Tv;)Lcom/google/android/gms/internal/ads/pC;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :cond_a
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/rr;->a(Lcom/google/android/gms/internal/ads/Tv;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 368
    .line 369
    sget-object v11, Lcom/google/android/gms/internal/ads/Iw;->T:Lcom/google/android/gms/internal/ads/Iw;

    .line 370
    .line 371
    new-instance v1, Lcom/google/android/gms/internal/ads/qr;

    .line 372
    .line 373
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 377
    .line 378
    .line 379
    move-result-object v15

    .line 380
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 381
    .line 382
    sget-object v13, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 383
    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    const/4 v12, 0x0

    .line 389
    move-object v9, v0

    .line 390
    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/mr;

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mr;->f()V

    .line 400
    .line 401
    .line 402
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 403
    .line 404
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v1, Ljava/util/List;

    .line 407
    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    const/4 v1, 0x0

    .line 413
    const/4 v10, 0x0

    .line 414
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_d

    .line 419
    .line 420
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    move-object v3, v1

    .line 425
    check-cast v3, Lcom/google/android/gms/internal/ads/Ov;

    .line 426
    .line 427
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/Ov;->a:Ljava/util/List;

    .line 428
    .line 429
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_c

    .line 438
    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Ljava/lang/String;

    .line 444
    .line 445
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/zi;

    .line 446
    .line 447
    iget v5, v3, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 448
    .line 449
    invoke-interface {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zi;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/pq;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    if-eqz v5, :cond_b

    .line 454
    .line 455
    invoke-interface {v5, v8, v3}, Lcom/google/android/gms/internal/ads/pq;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-eqz v4, :cond_b

    .line 460
    .line 461
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 462
    .line 463
    sget-object v4, Lcom/google/android/gms/internal/ads/Iw;->U:Lcom/google/android/gms/internal/ads/Iw;

    .line 464
    .line 465
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v4, "render-config-"

    .line 472
    .line 473
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v4, "-"

    .line 480
    .line 481
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v14

    .line 491
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 492
    .line 493
    move-object v15, v1

    .line 494
    check-cast v15, LD4/b;

    .line 495
    .line 496
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 497
    .line 498
    move-object/from16 v16, v1

    .line 499
    .line 500
    check-cast v16, Ljava/util/List;

    .line 501
    .line 502
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 503
    .line 504
    move-object v11, v1

    .line 505
    check-cast v11, LD4/b;

    .line 506
    .line 507
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 508
    .line 509
    move-object v12, v1

    .line 510
    check-cast v12, Lcom/google/android/gms/internal/ads/Gw;

    .line 511
    .line 512
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 513
    .line 514
    new-instance v0, Lcom/google/android/gms/internal/ads/Sa;

    .line 515
    .line 516
    const/4 v6, 0x6

    .line 517
    move-object v1, v0

    .line 518
    move-object/from16 v2, p0

    .line 519
    .line 520
    move-object v4, v8

    .line 521
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Sa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 522
    .line 523
    .line 524
    const-class v1, Ljava/lang/Throwable;

    .line 525
    .line 526
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 527
    .line 528
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/Gw;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 529
    .line 530
    invoke-static {v11, v1, v0, v3}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 531
    .line 532
    .line 533
    move-result-object v17

    .line 534
    move-object v11, v2

    .line 535
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 543
    .line 544
    goto/16 :goto_6

    .line 545
    .line 546
    :cond_d
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/mr;

    .line 547
    .line 548
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    new-instance v2, Lcom/google/android/gms/internal/ads/Zn;

    .line 552
    .line 553
    const/4 v3, 0x5

    .line 554
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 555
    .line 556
    .line 557
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/rr;->e:Ljava/util/concurrent/Executor;

    .line 558
    .line 559
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Fw;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 560
    .line 561
    .line 562
    :goto_7
    return-object v0
.end method
