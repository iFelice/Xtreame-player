.class public final Lcom/google/android/gms/internal/ads/Ih;
.super Lcom/google/android/gms/internal/ads/xi;
.source "SourceFile"


# instance fields
.field public final j:Lcom/google/android/gms/internal/ads/Ef;

.field public final k:I

.field public final l:Landroid/content/Context;

.field public final m:Lcom/google/android/gms/internal/ads/x;

.field public final n:Lcom/google/android/gms/internal/ads/gl;

.field public final o:Lcom/google/android/gms/internal/ads/Ek;

.field public final p:Lcom/google/android/gms/internal/ads/wj;

.field public final q:Z

.field public final r:Lcom/google/android/gms/internal/ads/oe;

.field public s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ef;ILcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/gl;Lcom/google/android/gms/internal/ads/Ek;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/oe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ih;->s:Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ih;->j:Lcom/google/android/gms/internal/ads/Ef;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ih;->l:Landroid/content/Context;

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/gms/internal/ads/Ih;->k:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Ih;->m:Lcom/google/android/gms/internal/ads/x;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Ih;->n:Lcom/google/android/gms/internal/ads/gl;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Ih;->o:Lcom/google/android/gms/internal/ads/Ek;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Ih;->p:Lcom/google/android/gms/internal/ads/wj;

    .line 20
    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->U4:Lcom/google/android/gms/internal/ads/J7;

    .line 22
    .line 23
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 24
    .line 25
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ih;->q:Z

    .line 38
    .line 39
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Ih;->r:Lcom/google/android/gms/internal/ads/oe;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->c:Lcom/google/android/gms/internal/ads/Cj;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/I7;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/I7;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ih;->j:Lcom/google/android/gms/internal/ads/Ef;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;Z)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ih;->l:Landroid/content/Context;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ih;->o:Lcom/google/android/gms/internal/ads/Ek;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ih;->q:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lc4/w;

    .line 15
    .line 16
    const/16 v3, 0x12

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lc4/w;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->v0:Lcom/google/android/gms/internal/ads/J7;

    .line 25
    .line 26
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 27
    .line 28
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ih;->p:Lcom/google/android/gms/internal/ads/wj;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 45
    .line 46
    iget-object v5, v2, Lk3/l;->c:Lo3/O;

    .line 47
    .line 48
    invoke-static {p1}, Lo3/O;->e(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 55
    .line 56
    invoke-static {p2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wj;->zzb()V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->w0:Lcom/google/android/gms/internal/ads/J7;

    .line 63
    .line 64
    iget-object v0, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_7

    .line 77
    .line 78
    new-instance p2, Lcom/google/android/gms/internal/ads/hy;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v0, v2, Lk3/l;->r:LB0/w0;

    .line 85
    .line 86
    invoke-virtual {v0}, LB0/w0;->j()Landroid/os/Looper;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/hy;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/google/android/gms/internal/ads/Qv;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/hy;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->fb:Lcom/google/android/gms/internal/ads/J7;

    .line 108
    .line 109
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const/4 v3, 0x0

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ih;->j:Lcom/google/android/gms/internal/ads/Ef;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/Ov;->r0:Z

    .line 135
    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Ih;->r:Lcom/google/android/gms/internal/ads/oe;

    .line 139
    .line 140
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/oe;->a:Ljava/lang/Object;

    .line 141
    .line 142
    monitor-enter v6

    .line 143
    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/oe;->d:Lcom/google/android/gms/internal/ads/me;

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/me;->a()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget v2, v2, Lcom/google/android/gms/internal/ads/Ov;->s0:I

    .line 151
    .line 152
    if-ne v2, v5, :cond_3

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const-string p1, "The app open consent form has been shown."

    .line 156
    .line 157
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/16 p1, 0xc

    .line 161
    .line 162
    const-string p2, "The consent form has already been shown."

    .line 163
    .line 164
    invoke-static {p1, p2, v3}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/wj;->g(Ll3/z0;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    throw p1

    .line 175
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ih;->s:Z

    .line 176
    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    const-string v2, "App open interstitial ad is already visible."

    .line 180
    .line 181
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/16 v2, 0xa

    .line 185
    .line 186
    invoke-static {v2, v3, v3}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/wj;->g(Ll3/z0;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ih;->s:Z

    .line 194
    .line 195
    if-nez v2, :cond_7

    .line 196
    .line 197
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ih;->n:Lcom/google/android/gms/internal/ads/gl;

    .line 198
    .line 199
    invoke-interface {v2, p2, p1, v4}, Lcom/google/android/gms/internal/ads/gl;->c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V

    .line 200
    .line 201
    .line 202
    if-eqz v1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance p1, Lc4/w;

    .line 208
    .line 209
    const/16 p2, 0x13

    .line 210
    .line 211
    invoke-direct {p1, p2}, Lc4/w;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/fl; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .line 216
    .line 217
    :cond_6
    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ih;->s:Z

    .line 219
    .line 220
    return-void

    .line 221
    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/wj;->H(Lcom/google/android/gms/internal/ads/fl;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    return-void
.end method

.method public final d(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ih;->m:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/Fn;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/Tv;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 20
    .line 21
    const-string v2, "gqi"

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "action"

    .line 29
    .line 30
    const-string v2, "ad_closed"

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "show_time"

    .line 36
    .line 37
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p2, "ad_format"

    .line 45
    .line 46
    const-string p3, "app_open_ad"

    .line 47
    .line 48
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, -0x1

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    if-eq p1, p2, :cond_3

    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    if-eq p1, p2, :cond_2

    .line 60
    .line 61
    const/4 p2, 0x3

    .line 62
    if-eq p1, p2, :cond_1

    .line 63
    .line 64
    const/4 p2, 0x4

    .line 65
    if-eq p1, p2, :cond_0

    .line 66
    .line 67
    const-string p1, "u"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string p1, "ac"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string p1, "cb"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string p1, "cc"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string p1, "bb"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const-string p1, "h"

    .line 83
    .line 84
    :goto_0
    const-string p2, "acr"

    .line 85
    .line 86
    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Om;->u()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
