.class public final Lcom/google/android/gms/internal/ads/hx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/mr;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/Uv;

.field public final g:Lcom/google/android/gms/internal/ads/Vv;

.field public final h:LP3/a;

.field public final i:Lcom/google/android/gms/internal/ads/H4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mr;Lp3/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Uv;Lcom/google/android/gms/internal/ads/Vv;LP3/a;Lcom/google/android/gms/internal/ads/H4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hx;->a:Lcom/google/android/gms/internal/ads/mr;

    .line 5
    .line 6
    iget-object p1, p2, Lp3/a;->G:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hx;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hx;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hx;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hx;->e:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/hx;->f:Lcom/google/android/gms/internal/ads/Uv;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/hx;->g:Lcom/google/android/gms/internal/ads/Vv;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/hx;->h:LP3/a;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/hx;->i:Lcom/google/android/gms/internal/ads/H4;

    .line 23
    .line 24
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v5, ""

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const-string v4, ""

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v6, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/hx;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p6

    .line 10
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v1, p3, :cond_0

    .line 18
    .line 19
    const-string v2, "0"

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string v2, "1"

    .line 23
    .line 24
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lcom/google/android/gms/internal/ads/Yv;

    .line 35
    .line 36
    const-string v5, "@gw_adlocid@"

    .line 37
    .line 38
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "@gw_adnetrefresh@"

    .line 45
    .line 46
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hx;->b:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "@gw_sdkver@"

    .line 53
    .line 54
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    const-string v3, "@gw_qdata@"

    .line 61
    .line 62
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/Ov;->y:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "@gw_adnetid@"

    .line 69
    .line 70
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/Ov;->x:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "@gw_allocid@"

    .line 77
    .line 78
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/Ov;->w:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/Ov;->W:Z

    .line 85
    .line 86
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hx;->e:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/Ov;->w0:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-static {v2, v4, v3, v5}, Lcom/bumptech/glide/c;->D(Ljava/lang/String;Landroid/content/Context;ZLjava/util/HashMap;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hx;->a:Lcom/google/android/gms/internal/ads/mr;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/mr;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v5, "@gw_adnetstatus@"

    .line 101
    .line 102
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/mr;->a()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    const/16 v5, 0xa

    .line 111
    .line 112
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "@gw_ttr@"

    .line 117
    .line 118
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hx;->c:Ljava/lang/String;

    .line 123
    .line 124
    const-string v4, "@gw_seqnum@"

    .line 125
    .line 126
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hx;->d:Ljava/lang/String;

    .line 131
    .line 132
    const-string v4, "@gw_sessid@"

    .line 133
    .line 134
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->l3:Lcom/google/android/gms/internal/ads/J7;

    .line 139
    .line 140
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 141
    .line 142
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 143
    .line 144
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const/4 v4, 0x0

    .line 155
    if-eqz v3, :cond_2

    .line 156
    .line 157
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_2

    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    xor-int/2addr v3, v1

    .line 169
    if-nez v4, :cond_3

    .line 170
    .line 171
    if-eqz v3, :cond_6

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    move v1, v3

    .line 175
    :goto_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hx;->i:Lcom/google/android/gms/internal/ads/H4;

    .line 180
    .line 181
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/H4;->c(Landroid/net/Uri;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v4, :cond_4

    .line 196
    .line 197
    const-string v3, "ms"

    .line 198
    .line 199
    invoke-virtual {v2, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :cond_4
    if-eqz v1, :cond_5

    .line 204
    .line 205
    const-string v1, "attok"

    .line 206
    .line 207
    invoke-virtual {v2, v1, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_7
    return-object v0
.end method
