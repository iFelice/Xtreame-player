.class public final Lcom/google/android/gms/internal/ads/Li;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Oo;

.field public final b:Lcom/google/android/gms/internal/ads/Yv;

.field public final c:Lcom/google/android/gms/internal/ads/Kw;

.field public final d:Lcom/google/android/gms/internal/ads/bh;

.field public final e:Lcom/google/android/gms/internal/ads/rr;

.field public final f:Lcom/google/android/gms/internal/ads/nk;

.field public g:Lcom/google/android/gms/internal/ads/Tv;

.field public final h:Lcom/google/android/gms/internal/ads/ip;

.field public final i:Lcom/google/android/gms/internal/ads/aj;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Lcom/google/android/gms/internal/ads/bp;

.field public final l:Lcom/google/android/gms/internal/ads/uq;

.field public final m:Lcom/google/android/gms/internal/ads/qp;

.field public final n:Lcom/google/android/gms/internal/ads/sp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Oo;Lcom/google/android/gms/internal/ads/Yv;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/bh;Lcom/google/android/gms/internal/ads/rr;Lcom/google/android/gms/internal/ads/nk;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/ip;Lcom/google/android/gms/internal/ads/aj;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/bp;Lcom/google/android/gms/internal/ads/uq;Lcom/google/android/gms/internal/ads/qp;Lcom/google/android/gms/internal/ads/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Li;->a:Lcom/google/android/gms/internal/ads/Oo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Li;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Li;->d:Lcom/google/android/gms/internal/ads/bh;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Li;->e:Lcom/google/android/gms/internal/ads/rr;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Li;->f:Lcom/google/android/gms/internal/ads/nk;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Li;->g:Lcom/google/android/gms/internal/ads/Tv;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Li;->h:Lcom/google/android/gms/internal/ads/ip;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Li;->i:Lcom/google/android/gms/internal/ads/aj;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Li;->j:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/Li;->k:Lcom/google/android/gms/internal/ads/bp;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/Li;->l:Lcom/google/android/gms/internal/ads/uq;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/Li;->m:Lcom/google/android/gms/internal/ads/qp;

    .line 29
    .line 30
    iput-object p14, p0, Lcom/google/android/gms/internal/ads/Li;->n:Lcom/google/android/gms/internal/ads/sp;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Iw;->K:Lcom/google/android/gms/internal/ads/Iw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/Ji;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Ji;-><init>(Lcom/google/android/gms/internal/ads/Li;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->e:Lcom/google/android/gms/internal/ads/rr;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->b5:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 28
    .line 29
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 44
    .line 45
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v0, v0

    .line 58
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/rs;->q(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/rs;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/Fw;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 4
    .line 5
    iget-object v1, v0, Ll3/b1;->d0:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Ll3/b1;->Y:Ll3/L;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->i:Lcom/google/android/gms/internal/ads/aj;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aj;->a()Lcom/google/android/gms/internal/ads/Fw;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Li;->c(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->a:Lcom/google/android/gms/internal/ads/Oo;

    .line 28
    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/Iw;->f0:Lcom/google/android/gms/internal/ads/Iw;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Oo;->d:Lcom/google/android/gms/internal/ads/Yv;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 34
    .line 35
    iget-object v1, v1, Ll3/b1;->d0:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_e

    .line 42
    .line 43
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Oo;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->D6:Lcom/google/android/gms/internal/ads/J7;

    .line 48
    .line 49
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 50
    .line 51
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 52
    .line 53
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    const-string v4, "&request_id="

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v7, -0x1

    .line 78
    if-eq v4, v7, :cond_2

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0xc

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v4, ""

    .line 88
    .line 89
    :cond_3
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_4

    .line 94
    .line 95
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 96
    .line 97
    const-string v1, "Invalid ad string."

    .line 98
    .line 99
    const/16 v4, 0xf

    .line 100
    .line 101
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_2
    move-object v7, v0

    .line 109
    goto/16 :goto_b

    .line 110
    .line 111
    :cond_4
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->T6:Lcom/google/android/gms/internal/ads/J7;

    .line 112
    .line 113
    iget-object v8, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 114
    .line 115
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_b

    .line 126
    .line 127
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Oo;->i:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v7

    .line 130
    :try_start_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Oo;->a:Lcom/google/android/gms/internal/ads/fg;

    .line 131
    .line 132
    check-cast v8, Lcom/google/android/gms/internal/ads/Bg;

    .line 133
    .line 134
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/Bg;->L:Lcom/google/android/gms/internal/ads/MJ;

    .line 135
    .line 136
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    check-cast v8, Lv3/C;

    .line 141
    .line 142
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 143
    .line 144
    invoke-virtual {v8, v4, v9}, Lv3/C;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 149
    .line 150
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_5

    .line 161
    .line 162
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 163
    .line 164
    invoke-static {v1, v4, v9, v5}, Lcom/google/android/gms/internal/ads/Oo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    goto :goto_3

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto/16 :goto_7

    .line 171
    .line 172
    :cond_5
    :goto_3
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 173
    .line 174
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_2
    const-string v6, "render_id"

    .line 178
    .line 179
    const-string v10, ""

    .line 180
    .line 181
    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_4

    .line 186
    :catch_0
    const-string v5, ""

    .line 187
    .line 188
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    if-nez v6, :cond_7

    .line 195
    .line 196
    const-string v6, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    :try_start_3
    new-instance v12, Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v5, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 205
    .line 206
    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    .line 208
    .line 209
    move-object v6, v12

    .line 210
    goto :goto_5

    .line 211
    :catch_1
    move-exception v12

    .line 212
    :try_start_4
    const-string v13, "Ad grouping: Has render_id, but not base64 encoded: "

    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-static {v13}, Lo3/I;->k(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object v13, Lk3/l;->A:Lk3/l;

    .line 226
    .line 227
    iget-object v13, v13, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 228
    .line 229
    const-string v14, "PreloadedLoader.decodeRenderId"

    .line 230
    .line 231
    invoke-virtual {v13, v14, v12}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :goto_5
    new-instance v12, Lcom/google/android/gms/internal/ads/tz;

    .line 235
    .line 236
    const/16 v13, 0x3a

    .line 237
    .line 238
    invoke-direct {v12, v13}, Lcom/google/android/gms/internal/ads/tz;-><init>(C)V

    .line 239
    .line 240
    .line 241
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/Xu;->j(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/Xu;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/Xu;->s(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    const/4 v13, 0x2

    .line 254
    if-ne v12, v13, :cond_6

    .line 255
    .line 256
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    move-object v10, v5

    .line 261
    check-cast v10, Ljava/lang/String;

    .line 262
    .line 263
    const/4 v5, 0x1

    .line 264
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    goto :goto_6

    .line 275
    :cond_6
    const-string v6, "Ad grouping: Has render_id, but invalid format: "

    .line 276
    .line 277
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_7
    :goto_6
    new-instance v5, Landroid/util/Pair;

    .line 289
    .line 290
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-direct {v5, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v6, Ljava/lang/String;

    .line 300
    .line 301
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v5, Ljava/lang/Integer;

    .line 304
    .line 305
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    if-nez v10, :cond_9

    .line 314
    .line 315
    if-lez v5, :cond_9

    .line 316
    .line 317
    invoke-virtual {v8, v4, v6}, Lv3/C;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-eqz v10, :cond_8

    .line 322
    .line 323
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 324
    .line 325
    const-string v1, "The ad has already been shown."

    .line 326
    .line 327
    const/16 v4, 0xa

    .line 328
    .line 329
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    monitor-exit v7

    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :cond_8
    invoke-virtual {v8, v5, v4, v6}, Lv3/C;->c(ILjava/lang/String;Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-nez v5, :cond_a

    .line 344
    .line 345
    :cond_9
    invoke-virtual {v8, v4}, Lv3/C;->b(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_a
    monitor-exit v7

    .line 349
    goto :goto_8

    .line 350
    :goto_7
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    throw v0

    .line 352
    :cond_b
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Oo;->a:Lcom/google/android/gms/internal/ads/fg;

    .line 353
    .line 354
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 355
    .line 356
    check-cast v7, Lcom/google/android/gms/internal/ads/Bg;

    .line 357
    .line 358
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Bg;->L:Lcom/google/android/gms/internal/ads/MJ;

    .line 359
    .line 360
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    check-cast v7, Lv3/C;

    .line 365
    .line 366
    invoke-virtual {v7, v4, v8}, Lv3/C;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 371
    .line 372
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    check-cast v5, Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_c

    .line 383
    .line 384
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 385
    .line 386
    invoke-static {v1, v4, v9, v5}, Lcom/google/android/gms/internal/ads/Oo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    :cond_c
    :goto_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_d

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_d
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/Oo;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Oo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/JB;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Oo;->d:Lcom/google/android/gms/internal/ads/Yv;

    .line 408
    .line 409
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 410
    .line 411
    iget-object v1, v1, Ll3/b1;->Y:Ll3/L;

    .line 412
    .line 413
    if-eqz v1, :cond_11

    .line 414
    .line 415
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->s6:Lcom/google/android/gms/internal/ads/J7;

    .line 416
    .line 417
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 418
    .line 419
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 420
    .line 421
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    check-cast v4, Ljava/lang/Boolean;

    .line 426
    .line 427
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-nez v4, :cond_f

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_f
    iget-object v4, v1, Ll3/L;->G:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v5, v1, Ll3/L;->H:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Oo;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Oo;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    if-nez v6, :cond_10

    .line 451
    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_10

    .line 457
    .line 458
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Oo;->a:Lcom/google/android/gms/internal/ads/fg;

    .line 459
    .line 460
    check-cast v5, Lcom/google/android/gms/internal/ads/Bg;

    .line 461
    .line 462
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Bg;->L:Lcom/google/android/gms/internal/ads/MJ;

    .line 463
    .line 464
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    check-cast v5, Lv3/C;

    .line 469
    .line 470
    invoke-virtual {v5, v4}, Lv3/C;->b(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 474
    .line 475
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 476
    .line 477
    const-string v6, "request_id"

    .line 478
    .line 479
    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    :goto_a
    iget-object v4, v1, Ll3/L;->G:Ljava/lang/String;

    .line 483
    .line 484
    iget-object v1, v1, Ll3/L;->H:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Oo;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Oo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/JB;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    goto/16 :goto_2

    .line 495
    .line 496
    :cond_10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Oo;->h:Lcom/google/android/gms/internal/ads/Cn;

    .line 497
    .line 498
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    .line 500
    const-string v1, "ridmm"

    .line 501
    .line 502
    const-string v4, "true"

    .line 503
    .line 504
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 508
    .line 509
    const-string v1, "Mismatch request IDs."

    .line 510
    .line 511
    const/16 v4, 0xe

    .line 512
    .line 513
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    goto/16 :goto_2

    .line 521
    .line 522
    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 523
    .line 524
    sget-object v5, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 525
    .line 526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    const/4 v4, 0x0

    .line 531
    move-object v1, v0

    .line 532
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    return-object v0
.end method

.method public final c(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->g:Lcom/google/android/gms/internal/ads/Tv;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 8
    .line 9
    sget-object v5, Lcom/google/android/gms/internal/ads/Iw;->J:Lcom/google/android/gms/internal/ads/Iw;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/rs;

    .line 16
    .line 17
    sget-object v7, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v3, p1

    .line 25
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 34
    .line 35
    iget-object v2, v2, Lk3/l;->i:Lcom/google/android/gms/internal/ads/rs;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->U3:Lcom/google/android/gms/internal/ads/J7;

    .line 41
    .line 42
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 43
    .line 44
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v3

    .line 61
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->s()V

    .line 62
    .line 63
    .line 64
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Ljava/util/concurrent/ScheduledFuture;

    .line 67
    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    invoke-interface {v5, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    sget-object v5, Lcom/google/android/gms/internal/ads/se;->d:Lcom/google/android/gms/internal/ads/pe;

    .line 77
    .line 78
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/rs;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v6, Ljava/lang/Runnable;

    .line 81
    .line 82
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->V3:Lcom/google/android/gms/internal/ads/J7;

    .line 83
    .line 84
    iget-object v8, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 85
    .line 86
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    .line 98
    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-exit v3

    .line 105
    goto :goto_2

    .line 106
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p1

    .line 108
    :cond_2
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Qa:Lcom/google/android/gms/internal/ads/J7;

    .line 109
    .line 110
    iget-object v3, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    sget-object v2, Lcom/google/android/gms/internal/ads/x8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->m:Lcom/google/android/gms/internal/ads/qp;

    .line 139
    .line 140
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    new-instance v3, Lcom/google/android/gms/internal/ads/No;

    .line 144
    .line 145
    const/4 v4, 0x5

    .line 146
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->j:Ljava/util/concurrent/Executor;

    .line 150
    .line 151
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 156
    .line 157
    sget-object v3, Lcom/google/android/gms/internal/ads/Iw;->M:Lcom/google/android/gms/internal/ads/Iw;

    .line 158
    .line 159
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Li;->h:Lcom/google/android/gms/internal/ads/ip;

    .line 164
    .line 165
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    new-instance v4, Lcom/google/android/gms/internal/ads/No;

    .line 169
    .line 170
    const/4 v5, 0x6

    .line 171
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 183
    .line 184
    sget-object v3, Lcom/google/android/gms/internal/ads/Iw;->J:Lcom/google/android/gms/internal/ads/Iw;

    .line 185
    .line 186
    const/4 v4, 0x3

    .line 187
    new-array v4, v4, [LD4/b;

    .line 188
    .line 189
    aput-object p1, v4, v1

    .line 190
    .line 191
    aput-object v7, v4, v0

    .line 192
    .line 193
    const/4 v1, 0x2

    .line 194
    aput-object v8, v4, v1

    .line 195
    .line 196
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v2, Lcom/google/android/gms/internal/ads/Ki;

    .line 201
    .line 202
    const/4 v9, 0x0

    .line 203
    move-object v4, v2

    .line 204
    move-object v5, p0

    .line 205
    move-object v6, p1

    .line 206
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Ki;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    .line 214
    .line 215
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    return-object p1

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 228
    .line 229
    sget-object v1, Lcom/google/android/gms/internal/ads/Iw;->J:Lcom/google/android/gms/internal/ads/Iw;

    .line 230
    .line 231
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->k:Lcom/google/android/gms/internal/ads/bp;

    .line 236
    .line 237
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    new-instance v1, Lcom/google/android/gms/internal/ads/No;

    .line 241
    .line 242
    const/4 v2, 0x7

    .line 243
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1
.end method
