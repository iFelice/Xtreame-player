.class public final Lcom/google/android/gms/internal/ads/U9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final G:Lk3/b;

.field public final H:Lcom/google/android/gms/internal/ads/Fn;

.field public final I:Lp3/k;

.field public final J:Lcom/google/android/gms/internal/ads/Tb;

.field public final K:Lcom/google/android/gms/internal/ads/cq;

.field public final L:Lcom/google/android/gms/internal/ads/oh;

.field public M:Ln3/a;

.field public final N:Lcom/google/android/gms/internal/ads/re;


# direct methods
.method public constructor <init>(Lk3/b;Lcom/google/android/gms/internal/ads/Tb;Lcom/google/android/gms/internal/ads/cq;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/oh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/U9;->M:Ln3/a;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/U9;->N:Lcom/google/android/gms/internal/ads/re;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U9;->G:Lk3/b;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/U9;->J:Lcom/google/android/gms/internal/ads/Tb;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/U9;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/U9;->H:Lcom/google/android/gms/internal/ads/Fn;

    .line 18
    .line 19
    new-instance p1, Lp3/k;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lp3/k;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U9;->I:Lp3/k;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/U9;->L:Lcom/google/android/gms/internal/ads/oh;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "o"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const-string v0, "p"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x7

    .line 20
    return p0

    .line 21
    :cond_0
    const-string v0, "l"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x6

    .line 30
    return p0

    .line 31
    :cond_1
    const-string v0, "c"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/16 p0, 0xe

    .line 40
    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/H4;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/Zv;)Landroid/net/Uri;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->lb:Lcom/google/android/gms/internal/ads/J7;

    .line 5
    .line 6
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 7
    .line 8
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/H4;->b(Landroid/net/Uri;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p5, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/Zv;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/H4;->b(Landroid/net/Uri;)Z

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    if-eqz p5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/H4;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_1

    .line 48
    :goto_0
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 49
    .line 50
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 51
    .line 52
    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    .line 53
    .line 54
    invoke-virtual {p1, p3, p0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method

.method public static c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "aclk_ms"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "aclk_upms"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "Error adding click uptime parameter to url: "

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/U9;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 3
    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/cq;->k(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/U9;->H:Lcom/google/android/gms/internal/ads/Fn;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v1, "dialog_not_shown_reason"

    .line 12
    .line 13
    invoke-static {v1, p3}, Lo3/r;->y(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v1, v2, v4

    .line 21
    .line 22
    aput-object p3, v2, v0

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-static {v0, v2, p3}, Lcom/google/android/gms/internal/ads/UA;->c(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/internal/ads/UA;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const-string v6, "dialog_not_shown"

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/U9;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 32
    .line 33
    move-object v2, p1

    .line 34
    move-object v5, p2

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/hq;->z3(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/cq;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final e(Ll3/a;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/U9;->g(Z)V

    .line 9
    .line 10
    .line 11
    move-object v4, v0

    .line 12
    check-cast v4, Lcom/google/android/gms/internal/ads/Ef;

    .line 13
    .line 14
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v11

    .line 18
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->T()Lcom/google/android/gms/internal/ads/H4;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->A0()Lcom/google/android/gms/internal/ads/Zv;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    const-string v5, "activity"

    .line 31
    .line 32
    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    move-object v12, v5

    .line 37
    check-cast v12, Landroid/app/ActivityManager;

    .line 38
    .line 39
    const-string v5, "u"

    .line 40
    .line 41
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v13, 0x0

    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/4 v9, 0x0

    .line 61
    move-object v5, v11

    .line 62
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/U9;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/H4;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/Zv;)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/U9;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "use_first_package"

    .line 71
    .line 72
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const-string v7, "use_running_process"

    .line 83
    .line 84
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    const-string v8, "use_custom_tabs"

    .line 95
    .line 96
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v8, 0x0

    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->g4:Lcom/google/android/gms/internal/ads/J7;

    .line 110
    .line 111
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 112
    .line 113
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 114
    .line 115
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const/4 v3, 0x0

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v9, "http"

    .line 134
    .line 135
    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const-string v10, "https"

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    move-object v2, v13

    .line 180
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    new-instance v10, Landroid/content/Intent;

    .line 186
    .line 187
    const-string v14, "android.intent.action.VIEW"

    .line 188
    .line 189
    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/high16 v15, 0x10000000

    .line 193
    .line 194
    invoke-virtual {v10, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    if-nez v2, :cond_5

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    new-instance v13, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v13, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    :goto_2
    if-eqz v3, :cond_6

    .line 221
    .line 222
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 223
    .line 224
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 225
    .line 226
    invoke-static {v11, v10}, Lo3/O;->D(Landroid/content/Context;Landroid/content/Intent;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v11, v13}, Lo3/O;->D(Landroid/content/Context;Landroid/content/Intent;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    invoke-static {v10, v9, v11}, Lcom/google/android/gms/internal/measurement/H1;->K(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    if-eqz v2, :cond_7

    .line 237
    .line 238
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/H1;->F(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_7
    if-eqz v13, :cond_8

    .line 245
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/measurement/H1;->K(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/H1;->F(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/measurement/H1;->K(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-nez v2, :cond_e

    .line 271
    .line 272
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_9

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_9
    if-eqz v7, :cond_c

    .line 280
    .line 281
    if-eqz v12, :cond_c

    .line 282
    .line 283
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-eqz v2, :cond_c

    .line 288
    .line 289
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    const/4 v5, 0x0

    .line 294
    :goto_3
    if-ge v5, v3, :cond_c

    .line 295
    .line 296
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 301
    .line 302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v12

    .line 310
    add-int/lit8 v13, v5, 0x1

    .line 311
    .line 312
    if-eqz v12, :cond_b

    .line 313
    .line 314
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 319
    .line 320
    iget-object v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 321
    .line 322
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 323
    .line 324
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    if-eqz v12, :cond_a

    .line 331
    .line 332
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/measurement/H1;->F(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    goto :goto_5

    .line 337
    :cond_b
    move v5, v13

    .line 338
    goto :goto_3

    .line 339
    :cond_c
    if-eqz v6, :cond_d

    .line 340
    .line 341
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 346
    .line 347
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/H1;->F(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    .line 348
    .line 349
    .line 350
    move-result-object v13

    .line 351
    goto :goto_5

    .line 352
    :cond_d
    :goto_4
    move-object v13, v10

    .line 353
    :cond_e
    :goto_5
    if-eqz p3, :cond_10

    .line 354
    .line 355
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/U9;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 356
    .line 357
    if-eqz v2, :cond_10

    .line 358
    .line 359
    if-eqz v13, :cond_10

    .line 360
    .line 361
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    move-object/from16 v4, p4

    .line 374
    .line 375
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/U9;->h(Ll3/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-nez v2, :cond_f

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_f
    return-void

    .line 383
    :cond_10
    :goto_6
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 384
    .line 385
    new-instance v2, Ln3/f;

    .line 386
    .line 387
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/U9;->M:Ln3/a;

    .line 388
    .line 389
    invoke-direct {v2, v13, v3}, Ln3/f;-><init>(Landroid/content/Intent;Ln3/a;)V

    .line 390
    .line 391
    .line 392
    move/from16 v3, p5

    .line 393
    .line 394
    move/from16 v4, p6

    .line 395
    .line 396
    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ef;->b0(Ln3/f;ZZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Ll3/a;

    .line 2
    .line 3
    const-string v0, "u"

    .line 4
    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ov;->w0:Ljava/util/HashMap;

    .line 30
    .line 31
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v2, v3, v1}, Lcom/bumptech/glide/c;->D(Ljava/lang/String;Landroid/content/Context;ZLjava/util/HashMap;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "a"

    .line 41
    .line 42
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string p1, "Action missing from an open GMSG."

    .line 51
    .line 52
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/U9;->G:Lk3/b;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lk3/b;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v2, v0}, Lk3/b;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->p9:Lcom/google/android/gms/internal/ads/J7;

    .line 72
    .line 73
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 74
    .line 75
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/U9;->L:Lcom/google/android/gms/internal/ads/oh;

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oh;->b(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    sget-object v3, Ll3/p;->f:Ll3/p;

    .line 100
    .line 101
    iget-object v3, v3, Ll3/p;->e:Ljava/util/Random;

    .line 102
    .line 103
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/lang/String;Ljava/util/Random;)LD4/b;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/xc;

    .line 113
    .line 114
    invoke-direct {v2, p0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/U9;Ljava/util/Map;Ll3/a;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/U9;->N:Lcom/google/android/gms/internal/ads/re;

    .line 118
    .line 119
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U9;->J:Lcom/google/android/gms/internal/ads/Tb;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Tb;->q(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final h(Ll3/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/U9;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/U9;->H:Lcom/google/android/gms/internal/ads/Fn;

    .line 4
    .line 5
    if-eqz v7, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/hq;->N:I

    .line 8
    .line 9
    new-instance v5, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v4, "offline_open"

    .line 15
    .line 16
    move-object v0, p2

    .line 17
    move-object v1, v7

    .line 18
    move-object v2, v6

    .line 19
    move-object v3, p4

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hq;->z3(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/cq;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 24
    .line 25
    iget-object v1, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/le;->a(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v8, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p1, La3/b;

    .line 38
    .line 39
    const/16 p2, 0x17

    .line 40
    .line 41
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/U9;->I:Lp3/k;

    .line 42
    .line 43
    invoke-direct {p1, v6, p3, p4, p2}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/cq;->N(Lcom/google/android/gms/internal/ads/Dw;)V

    .line 47
    .line 48
    .line 49
    return v8

    .line 50
    :cond_1
    move-object v1, p1

    .line 51
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x1

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ov;->d0:Lcom/google/android/gms/internal/ads/nc;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/nc;->a:Z

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/nc;->b:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/nc;->c:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 79
    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->Q7:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 82
    .line 83
    iget-object v9, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    sget p1, Lcom/google/android/gms/internal/ads/hq;->N:I

    .line 102
    .line 103
    new-instance v5, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, "onfs"

    .line 109
    .line 110
    move-object v0, p2

    .line 111
    move-object v1, v7

    .line 112
    move-object v2, v6

    .line 113
    move-object v3, p4

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hq;->z3(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/cq;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return v8

    .line 118
    :cond_4
    invoke-static {p2}, Lo3/O;->J(Landroid/content/Context;)Lo3/x;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v4, LD/u;

    .line 123
    .line 124
    invoke-direct {v4, p2}, LD/u;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, LD/u;->a()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object v0, v0, Lk3/l;->e:LF2/G;

    .line 132
    .line 133
    invoke-virtual {v0, p2}, LF2/G;->U(Landroid/content/Context;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->l()LA2/i;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6}, LA2/i;->b()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzi()Landroid/app/Activity;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    if-nez v6, :cond_5

    .line 152
    .line 153
    const/4 v6, 0x1

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    const/4 v6, 0x0

    .line 156
    :goto_1
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 157
    .line 158
    if-nez v4, :cond_9

    .line 159
    .line 160
    new-instance v4, LD/u;

    .line 161
    .line 162
    invoke-direct {v4, p2}, LD/u;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, LD/u;->a()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    .line 174
    const/16 v7, 0x21

    .line 175
    .line 176
    if-ge v4, v7, :cond_7

    .line 177
    .line 178
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->L7:Lcom/google/android/gms/internal/ads/J7;

    .line 179
    .line 180
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    goto :goto_2

    .line 191
    :cond_7
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->K7:Lcom/google/android/gms/internal/ads/J7;

    .line 192
    .line 193
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    :goto_2
    if-eqz v4, :cond_8

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    :goto_3
    const-string p1, "notifications_disabled"

    .line 207
    .line 208
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return v8

    .line 212
    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 213
    .line 214
    const-string p1, "notification_channel_disabled"

    .line 215
    .line 216
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return v8

    .line 220
    :cond_a
    if-nez v2, :cond_b

    .line 221
    .line 222
    const-string p1, "work_manager_unavailable"

    .line 223
    .line 224
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return v8

    .line 228
    :cond_b
    if-eqz v6, :cond_c

    .line 229
    .line 230
    const-string p1, "ad_no_activity"

    .line 231
    .line 232
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return v8

    .line 236
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->I7:Lcom/google/android/gms/internal/ads/J7;

    .line 237
    .line 238
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_d

    .line 249
    .line 250
    const-string p1, "notification_flow_disabled"

    .line 251
    .line 252
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return v8

    .line 256
    :cond_d
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->B()Ln3/k;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_10

    .line 261
    .line 262
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzi()Landroid/app/Activity;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_10

    .line 267
    .line 268
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzi()Landroid/app/Activity;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_f

    .line 273
    .line 274
    new-instance v2, Lcom/google/android/gms/internal/ads/bq;

    .line 275
    .line 276
    const/4 v4, 0x0

    .line 277
    invoke-direct {v2, v0, v4, p4, p3}, Lcom/google/android/gms/internal/ads/bq;-><init>(Landroid/app/Activity;Ln3/k;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->B()Ln3/k;

    .line 281
    .line 282
    .line 283
    move-result-object p3

    .line 284
    iget-object p3, p3, Ln3/k;->I:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 285
    .line 286
    if-eqz p3, :cond_e

    .line 287
    .line 288
    iget-object p3, p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b0:Lcom/google/android/gms/internal/ads/dc;

    .line 289
    .line 290
    if-eqz p3, :cond_e

    .line 291
    .line 292
    new-instance v0, LR3/b;

    .line 293
    .line 294
    invoke-direct {v0, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/dc;->w3(LR3/a;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_e
    new-instance p1, Ln3/h;

    .line 302
    .line 303
    const-string p3, "noioou"

    .line 304
    .line 305
    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/U9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return v8

    .line 318
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    .line 319
    .line 320
    const-string p2, "Null activity"

    .line 321
    .line 322
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_10
    invoke-interface {v1, p4, p3}, Lcom/google/android/gms/internal/ads/Ef;->s0(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :goto_5
    invoke-interface {p1}, Ll3/a;->x()V

    .line 330
    .line 331
    .line 332
    return v3
.end method

.method public final i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U9;->H:Lcom/google/android/gms/internal/ads/Fn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "action"

    .line 11
    .line 12
    const-string v2, "cct_action"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p1, "WRONG_EXP_SETUP"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    const-string p1, "UNKNOWN"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const-string p1, "EMPTY_URL"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    const-string p1, "ACTIVITY_NOT_FOUND"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const-string p1, "CCT_READY_TO_OPEN"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    const-string p1, "CCT_NOT_SUPPORTED"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_5
    const-string p1, "CONTEXT_NULL"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_6
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    .line 42
    .line 43
    :goto_0
    const-string v1, "cct_open_status"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Om;->u()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
