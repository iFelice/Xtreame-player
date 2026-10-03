.class public final Lcom/google/android/gms/internal/ads/Gp;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Lc;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/jC;

.field public final I:Lcom/google/android/gms/internal/ads/Mp;

.field public final J:Lcom/google/android/gms/internal/ads/ah;

.field public final K:Ljava/util/ArrayDeque;

.field public final L:Lcom/google/android/gms/internal/ads/Uw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/y1;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/Mp;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/Uw;)V
    .locals 0

    .line 1
    const-string p3, "com.google.android.gms.ads.internal.request.IAdRequestService"

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gp;->G:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gp;->H:Lcom/google/android/gms/internal/ads/jC;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Gp;->I:Lcom/google/android/gms/internal/ads/Mp;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Gp;->J:Lcom/google/android/gms/internal/ads/ah;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Gp;->K:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Gp;->L:Lcom/google/android/gms/internal/ads/Uw;

    .line 20
    .line 21
    return-void
.end method

.method public static E3(Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/Qa;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/Fw;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Pa;->b:Lcom/google/android/gms/internal/ads/Aa;

    .line 2
    .line 3
    new-instance v1, Lc4/y;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lc4/y;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "AFMA_getAdDictionary"

    .line 11
    .line 12
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/Qa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p0, p4}, Lcom/google/android/gms/internal/measurement/H1;->L(LD4/b;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/Iw;->M:Lcom/google/android/gms/internal/ads/Iw;

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lcom/google/android/gms/internal/ads/Om;

    .line 53
    .line 54
    const/16 v0, 0x11

    .line 55
    .line 56
    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 60
    .line 61
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object p0
.end method

.method public static F3(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/vg;)Lcom/google/android/gms/internal/ads/Fw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Va;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lc4/y;

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    invoke-direct {p2, v1}, Lc4/y;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/Iw;->L:Lcom/google/android/gms/internal/ads/Iw;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static H3(LD4/b;Lcom/google/android/gms/internal/ads/Rc;Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(II)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 16
    .line 17
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final A3(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/Fw;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 6
    .line 7
    iget-object v4, v4, Lk3/l;->p:Lcom/google/android/gms/internal/ads/xc;

    .line 8
    .line 9
    invoke-static {}, Lp3/a;->i()Lp3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Gp;->G:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Gp;->L:Lcom/google/android/gms/internal/ads/Uw;

    .line 16
    .line 17
    invoke-virtual {v4, v6, v5, v8}, Lcom/google/android/gms/internal/ads/xc;->n(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Uw;)Lcom/google/android/gms/internal/ads/Qa;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Gp;->J:Lcom/google/android/gms/internal/ads/ah;

    .line 22
    .line 23
    check-cast v5, Lcom/google/android/gms/internal/ads/fg;

    .line 24
    .line 25
    move/from16 v8, p2

    .line 26
    .line 27
    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/internal/ads/fg;->c(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/vg;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/ads/Fp;->d:Lc4/y;

    .line 32
    .line 33
    sget-object v9, Lcom/google/android/gms/internal/ads/Pa;->c:Lcom/google/android/gms/internal/ads/Aa;

    .line 34
    .line 35
    const-string v10, "google.afma.response.normalize"

    .line 36
    .line 37
    invoke-virtual {v4, v10, v8, v9}, Lcom/google/android/gms/internal/ads/Qa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    sget-object v9, Lcom/google/android/gms/internal/ads/y8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 42
    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_0

    .line 54
    .line 55
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Wc;->P:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-nez v9, :cond_1

    .line 65
    .line 66
    const-string v9, "Request contained a PoolKey but split request is disabled."

    .line 67
    .line 68
    invoke-static {v9}, Lo3/I;->k(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/Gp;->D3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ep;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    if-nez v10, :cond_1

    .line 79
    .line 80
    const-string v9, "Request contained a PoolKey but no matching parameters were found."

    .line 81
    .line 82
    invoke-static {v9}, Lo3/I;->k(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    if-nez v10, :cond_2

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    invoke-static {v6, v9}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/Ep;->d:Lcom/google/android/gms/internal/ads/Ow;

    .line 95
    .line 96
    :goto_1
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/vg;->c:Lcom/google/android/gms/internal/ads/MJ;

    .line 97
    .line 98
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Lcom/google/android/gms/internal/ads/Tw;

    .line 103
    .line 104
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 105
    .line 106
    const-string v13, "ad_types"

    .line 107
    .line 108
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/Tw;->d(Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    new-instance v12, Lcom/google/android/gms/internal/ads/Lp;

    .line 116
    .line 117
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/Wc;->M:Ljava/lang/String;

    .line 118
    .line 119
    invoke-direct {v12, v13, v11, v9}, Lcom/google/android/gms/internal/ads/Lp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 120
    .line 121
    .line 122
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/Wc;->H:Lp3/a;

    .line 123
    .line 124
    iget-object v13, v13, Lp3/a;->G:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v14, Lcom/google/android/gms/internal/ads/Om;

    .line 127
    .line 128
    invoke-direct {v14, v6, v13}, Lcom/google/android/gms/internal/ads/Om;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/vg;->l:Lcom/google/android/gms/internal/ads/MJ;

    .line 132
    .line 133
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    check-cast v13, Lcom/google/android/gms/internal/ads/Kw;

    .line 138
    .line 139
    const/16 v15, 0xb

    .line 140
    .line 141
    invoke-static {v6, v15}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    sget-object v1, Lcom/google/android/gms/internal/ads/Iw;->Q:Lcom/google/android/gms/internal/ads/Iw;

    .line 146
    .line 147
    sget-object v7, Lcom/google/android/gms/internal/ads/Iw;->O:Lcom/google/android/gms/internal/ads/Iw;

    .line 148
    .line 149
    const/16 v3, 0xa

    .line 150
    .line 151
    if-nez v10, :cond_3

    .line 152
    .line 153
    invoke-static {v2, v13, v5}, Lcom/google/android/gms/internal/ads/Gp;->F3(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/vg;)Lcom/google/android/gms/internal/ads/Fw;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5, v13, v4, v11, v9}, Lcom/google/android/gms/internal/ads/Gp;->E3(Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/Qa;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/Fw;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-static {v6, v3}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const/4 v6, 0x2

    .line 166
    new-array v10, v6, [LD4/b;

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    aput-object v9, v10, v6

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    aput-object v5, v10, v6

    .line 173
    .line 174
    invoke-virtual {v13, v7, v10}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    new-instance v7, Lv3/d;

    .line 179
    .line 180
    invoke-direct {v7, v9, v2, v5, v3}, Lv3/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v7}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    new-instance v6, Lcom/google/android/gms/internal/ads/Rw;

    .line 192
    .line 193
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/Rw;-><init>(Lcom/google/android/gms/internal/ads/Ow;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const/4 v6, 0x0

    .line 209
    invoke-static {v3, v11, v4, v6}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/measurement/H1;->L(LD4/b;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 213
    .line 214
    .line 215
    const/4 v4, 0x3

    .line 216
    new-array v4, v4, [LD4/b;

    .line 217
    .line 218
    aput-object v5, v4, v6

    .line 219
    .line 220
    const/4 v6, 0x1

    .line 221
    aput-object v9, v4, v6

    .line 222
    .line 223
    const/4 v6, 0x2

    .line 224
    aput-object v3, v4, v6

    .line 225
    .line 226
    invoke-virtual {v13, v1, v4}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    new-instance v10, Lcom/google/android/gms/internal/ads/Ki;

    .line 231
    .line 232
    const/4 v6, 0x1

    .line 233
    move-object v1, v10

    .line 234
    move-object/from16 v2, p1

    .line 235
    .line 236
    move-object v4, v5

    .line 237
    move-object v5, v9

    .line 238
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Ki;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v10}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const/4 v4, 0x0

    .line 254
    goto :goto_2

    .line 255
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Kp;

    .line 256
    .line 257
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/Ep;->b:Lorg/json/JSONObject;

    .line 258
    .line 259
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/Ep;->a:Lcom/google/android/gms/internal/ads/Xc;

    .line 260
    .line 261
    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Xc;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v6, v3}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v13, v2, v7}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v4, Lcom/google/android/gms/internal/ads/Rw;

    .line 281
    .line 282
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/Rw;-><init>(Lcom/google/android/gms/internal/ads/Ow;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const/4 v4, 0x0

    .line 298
    invoke-static {v2, v11, v3, v4}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 299
    .line 300
    .line 301
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v2, v15}, Lcom/google/android/gms/internal/measurement/H1;->L(LD4/b;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 306
    .line 307
    .line 308
    const/4 v5, 0x2

    .line 309
    new-array v5, v5, [LD4/b;

    .line 310
    .line 311
    aput-object v2, v5, v4

    .line 312
    .line 313
    const/4 v6, 0x1

    .line 314
    aput-object v3, v5, v6

    .line 315
    .line 316
    invoke-virtual {v13, v1, v5}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-instance v5, Lcom/google/android/gms/internal/ads/Ap;

    .line 321
    .line 322
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ap;-><init>(LD4/b;Lcom/google/android/gms/internal/ads/fC;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v5}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    :goto_2
    invoke-static {v1, v11, v15, v4}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 338
    .line 339
    .line 340
    return-object v1
.end method

.method public final B3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 6
    .line 7
    iget-object v2, v2, Lk3/l;->p:Lcom/google/android/gms/internal/ads/xc;

    .line 8
    .line 9
    invoke-static {}, Lp3/a;->i()Lp3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Gp;->G:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Gp;->L:Lcom/google/android/gms/internal/ads/Uw;

    .line 16
    .line 17
    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/xc;->n(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Uw;)Lcom/google/android/gms/internal/ads/Qa;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/google/android/gms/internal/ads/C8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/Exception;

    .line 36
    .line 37
    const-string v2, "Signal collection disabled."

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    return-object v1

    .line 47
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Gp;->J:Lcom/google/android/gms/internal/ads/ah;

    .line 48
    .line 49
    check-cast v3, Lcom/google/android/gms/internal/ads/fg;

    .line 50
    .line 51
    move/from16 v5, p2

    .line 52
    .line 53
    invoke-virtual {v3, v1, v5}, Lcom/google/android/gms/internal/ads/fg;->c(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/vg;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/vg;->b:Lcom/google/android/gms/internal/ads/Bg;

    .line 58
    .line 59
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Bg;->b:Lcom/google/android/gms/internal/ads/hg;

    .line 60
    .line 61
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/hg;->b:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Bg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 67
    .line 68
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/vg;->a()Lcom/google/android/gms/internal/ads/zs;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance v9, Lcom/google/android/gms/internal/ads/zs;

    .line 77
    .line 78
    sget-object v10, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 79
    .line 80
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/vg;->a:LK/k;

    .line 84
    .line 85
    iget-object v11, v11, LK/k;->I:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v11, Lcom/google/android/gms/internal/ads/Wc;

    .line 88
    .line 89
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/Wc;->K:Ljava/util/List;

    .line 90
    .line 91
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zs;-><init>(Lcom/google/android/gms/internal/ads/re;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/vg;->d:Lcom/google/android/gms/internal/ads/Ch;

    .line 98
    .line 99
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/vg;->e:Lcom/google/android/gms/internal/ads/Ch;

    .line 104
    .line 105
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/vg;->f:Lcom/google/android/gms/internal/ads/Mn;

    .line 110
    .line 111
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/vg;->g:Lcom/google/android/gms/internal/ads/Ou;

    .line 116
    .line 117
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 118
    .line 119
    .line 120
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/vg;->h:Lcom/google/android/gms/internal/ads/xt;

    .line 121
    .line 122
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/vg;->i:Lcom/google/android/gms/internal/ads/Jo;

    .line 127
    .line 128
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/vg;->j:Lcom/google/android/gms/internal/ads/Ch;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 135
    .line 136
    .line 137
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/vg;->k:Lcom/google/android/gms/internal/ads/Lu;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/vg;->c:Lcom/google/android/gms/internal/ads/MJ;

    .line 147
    .line 148
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v16

    .line 152
    check-cast v16, Lcom/google/android/gms/internal/ads/Tw;

    .line 153
    .line 154
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Bg;->y:Lcom/google/android/gms/internal/ads/MJ;

    .line 155
    .line 156
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lcom/google/android/gms/internal/ads/Fn;

    .line 161
    .line 162
    check-cast v6, Lcom/google/android/gms/internal/ads/Nu;

    .line 163
    .line 164
    move-object/from16 p2, v1

    .line 165
    .line 166
    new-instance v1, Ljava/util/HashSet;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->n5:Lcom/google/android/gms/internal/ads/J7;

    .line 181
    .line 182
    sget-object v7, Ll3/q;->d:Ll3/q;

    .line 183
    .line 184
    iget-object v9, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 185
    .line 186
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_1

    .line 197
    .line 198
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/google/android/gms/internal/ads/uu;

    .line 203
    .line 204
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_1
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->o5:Lcom/google/android/gms/internal/ads/J7;

    .line 208
    .line 209
    iget-object v7, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 210
    .line 211
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_2

    .line 222
    .line 223
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Lcom/google/android/gms/internal/ads/uu;

    .line 228
    .line 229
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_2
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->p5:Lcom/google/android/gms/internal/ads/J7;

    .line 233
    .line 234
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_3

    .line 245
    .line 246
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, Lcom/google/android/gms/internal/ads/uu;

    .line 251
    .line 252
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->r5:Lcom/google/android/gms/internal/ads/J7;

    .line 256
    .line 257
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_4

    .line 268
    .line 269
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    check-cast v6, Lcom/google/android/gms/internal/ads/uu;

    .line 274
    .line 275
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_4
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->s5:Lcom/google/android/gms/internal/ads/J7;

    .line 279
    .line 280
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    check-cast v6, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_5

    .line 291
    .line 292
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Lcom/google/android/gms/internal/ads/uu;

    .line 297
    .line 298
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :cond_5
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->I2:Lcom/google/android/gms/internal/ads/J7;

    .line 302
    .line 303
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    check-cast v6, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_6

    .line 314
    .line 315
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Lcom/google/android/gms/internal/ads/uu;

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    .line 325
    .line 326
    move-object v7, v0

    .line 327
    move-object v9, v10

    .line 328
    move-object v10, v1

    .line 329
    move-object/from16 v11, v16

    .line 330
    .line 331
    move-object v12, v5

    .line 332
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/vu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Ljava/util/Set;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Fn;)V

    .line 333
    .line 334
    .line 335
    sget-object v1, Lcom/google/android/gms/internal/ads/Pa;->b:Lcom/google/android/gms/internal/ads/Aa;

    .line 336
    .line 337
    sget-object v5, Lcom/google/android/gms/internal/ads/Pa;->c:Lcom/google/android/gms/internal/ads/Aa;

    .line 338
    .line 339
    const-string v6, "google.afma.request.getSignals"

    .line 340
    .line 341
    invoke-virtual {v2, v6, v1, v5}, Lcom/google/android/gms/internal/ads/Qa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const/16 v2, 0x16

    .line 346
    .line 347
    invoke-static {v4, v2}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/vg;->l:Lcom/google/android/gms/internal/ads/MJ;

    .line 352
    .line 353
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lcom/google/android/gms/internal/ads/Kw;

    .line 358
    .line 359
    sget-object v4, Lcom/google/android/gms/internal/ads/Iw;->R:Lcom/google/android/gms/internal/ads/Iw;

    .line 360
    .line 361
    move-object/from16 v5, p1

    .line 362
    .line 363
    move-object/from16 v6, p2

    .line 364
    .line 365
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 366
    .line 367
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    invoke-virtual {v3, v7, v4}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    new-instance v4, Lcom/google/android/gms/internal/ads/Rw;

    .line 376
    .line 377
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Rw;-><init>(Lcom/google/android/gms/internal/ads/Ow;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    new-instance v4, Lcom/google/android/gms/internal/ads/Va;

    .line 385
    .line 386
    const/16 v7, 0xb

    .line 387
    .line 388
    invoke-direct {v4, v7, v0, v5}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    sget-object v3, Lcom/google/android/gms/internal/ads/Iw;->S:Lcom/google/android/gms/internal/ads/Iw;

    .line 396
    .line 397
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->g(Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Lcom/google/android/gms/internal/ads/Tw;

    .line 414
    .line 415
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 416
    .line 417
    const-string v4, "ad_types"

    .line 418
    .line 419
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/Tw;->d(Ljava/util/ArrayList;)V

    .line 424
    .line 425
    .line 426
    const-string v4, "extras"

    .line 427
    .line 428
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/Tw;->f(Landroid/os/Bundle;)V

    .line 433
    .line 434
    .line 435
    const/4 v3, 0x1

    .line 436
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 437
    .line 438
    .line 439
    sget-object v1, Lcom/google/android/gms/internal/ads/r8;->g:Lcom/google/android/gms/internal/ads/f8;

    .line 440
    .line 441
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_7

    .line 452
    .line 453
    move-object/from16 v1, p0

    .line 454
    .line 455
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Gp;->I:Lcom/google/android/gms/internal/ads/Mp;

    .line 456
    .line 457
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    new-instance v3, Lcom/google/android/gms/internal/ads/Cp;

    .line 461
    .line 462
    const/4 v4, 0x0

    .line 463
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/Cp;-><init>(Lcom/google/android/gms/internal/ads/Mp;I)V

    .line 464
    .line 465
    .line 466
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Gp;->H:Lcom/google/android/gms/internal/ads/jC;

    .line 467
    .line 468
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Fw;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 469
    .line 470
    .line 471
    goto :goto_0

    .line 472
    :cond_7
    move-object/from16 v1, p0

    .line 473
    .line 474
    :goto_0
    return-object v0
.end method

.method public final C3(Ljava/lang/String;)LD4/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/y8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Exception;

    .line 16
    .line 17
    const-string v0, "Split request is disabled."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Dp;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Gp;->D3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ep;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/Exception;

    .line 43
    .line 44
    const-string v1, "URL to be removed not found for cache key: "

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public final declared-synchronized D3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ep;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gp;->K:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/Ep;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ep;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object v1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit p0

    .line 36
    const/4 p1, 0x0

    .line 37
    return-object p1

    .line 38
    :goto_0
    monitor-exit p0

    .line 39
    throw p1
.end method

.method public final declared-synchronized G3()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/y8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gp;->K:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lt v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gp;->K:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final L1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Rc;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Gp;->C3(Ljava/lang/String;)LD4/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Gp;->H3(LD4/b;Lcom/google/android/gms/internal/ads/Rc;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final W1(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 24
    .line 25
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 26
    .line 27
    const-string v2, "service-connected"

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Gp;->B3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Gp;->H3(LD4/b;Lcom/google/android/gms/internal/ads/Rc;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final n3(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 24
    .line 25
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 26
    .line 27
    const-string v2, "service-connected"

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Gp;->A3(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/Fw;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Gp;->H3(LD4/b;Lcom/google/android/gms/internal/ads/Rc;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/google/android/gms/internal/ads/r8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Gp;->I:Lcom/google/android/gms/internal/ads/Mp;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/google/android/gms/internal/ads/Cp;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/ads/Cp;-><init>(Lcom/google/android/gms/internal/ads/Mp;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Gp;->H:Lcom/google/android/gms/internal/ads/jC;

    .line 69
    .line 70
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Fw;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final u2(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Gp;->z3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Gp;->H3(LD4/b;Lcom/google/android/gms/internal/ads/Rc;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_e

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_c

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const-string v3, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 10
    .line 11
    if-eq p1, v2, :cond_9

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    if-eq p1, v2, :cond_6

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    check-cast v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/Qc;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Landroid/os/IBinder;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Gp;->L1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Rc;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/Wc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/google/android/gms/internal/ads/Wc;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    check-cast v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/Qc;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Landroid/os/IBinder;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Gp;->u2(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/Wc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    .line 107
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/google/android/gms/internal/ads/Wc;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-nez v2, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 125
    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    check-cast v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/Qc;

    .line 132
    .line 133
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Landroid/os/IBinder;)V

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Gp;->W1(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/Wc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 147
    .line 148
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/google/android/gms/internal/ads/Wc;

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-nez v2, :cond_a

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_a
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 166
    .line 167
    if-eqz v3, :cond_b

    .line 168
    .line 169
    check-cast v1, Lcom/google/android/gms/internal/ads/Rc;

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/Qc;

    .line 173
    .line 174
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Landroid/os/IBinder;)V

    .line 175
    .line 176
    .line 177
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Gp;->n3(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/Ec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/google/android/gms/internal/ads/Ec;

    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-nez p1, :cond_d

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_d
    const-string v1, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    .line 203
    .line 204
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 205
    .line 206
    .line 207
    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/ads/Ec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    .line 216
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Lcom/google/android/gms/internal/ads/Ec;

    .line 221
    .line 222
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    .line 227
    .line 228
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    return v0
.end method

.method public final z3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/y8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Exception;

    .line 16
    .line 17
    const-string p2, "Split request is disabled."

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Wc;->O:Lcom/google/android/gms/internal/ads/ow;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/lang/Exception;

    .line 32
    .line 33
    const-string p2, "Pool configuration missing from request."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/ow;->J:I

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget v0, v0, Lcom/google/android/gms/internal/ads/ow;->K:I

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 53
    .line 54
    iget-object v0, v0, Lk3/l;->p:Lcom/google/android/gms/internal/ads/xc;

    .line 55
    .line 56
    invoke-static {}, Lp3/a;->i()Lp3/a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Gp;->L:Lcom/google/android/gms/internal/ads/Uw;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Gp;->G:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/xc;->n(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Uw;)Lcom/google/android/gms/internal/ads/Qa;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gp;->J:Lcom/google/android/gms/internal/ads/ah;

    .line 69
    .line 70
    check-cast v1, Lcom/google/android/gms/internal/ads/fg;

    .line 71
    .line 72
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/fg;->c(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/vg;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/vg;->l:Lcom/google/android/gms/internal/ads/MJ;

    .line 77
    .line 78
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/google/android/gms/internal/ads/Kw;

    .line 83
    .line 84
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/Gp;->F3(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/vg;)Lcom/google/android/gms/internal/ads/Fw;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/vg;->c:Lcom/google/android/gms/internal/ads/MJ;

    .line 89
    .line 90
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/google/android/gms/internal/ads/Tw;

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-static {v3, v2}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-static {v7, v1, v0, p2, v9}, Lcom/google/android/gms/internal/ads/Gp;->E3(Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/Qa;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/Fw;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->e0:Lcom/google/android/gms/internal/ads/Iw;

    .line 107
    .line 108
    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [LD4/b;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    aput-object v7, v0, v2

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    aput-object v6, v0, v2

    .line 116
    .line 117
    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/ads/Bp;

    .line 122
    .line 123
    move-object v4, v0

    .line 124
    move-object v5, p0

    .line 125
    move-object v8, p1

    .line 126
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Bp;-><init>(Lcom/google/android/gms/internal/ads/Gp;Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    .line 139
    .line 140
    const-string p2, "Caching is disabled."

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method
