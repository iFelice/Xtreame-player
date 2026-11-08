.class public final Lcom/google/android/gms/internal/ads/wr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vq;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/Qg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Qg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wr;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wr;->b:Lcom/google/android/gms/internal/ads/Qg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/google/android/gms/internal/ads/Ib;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ov;->Z:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Ib;->a3(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v2, p1

    .line 15
    .line 16
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/gms/internal/ads/Yv;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Yv;->o:Landroidx/leanback/widget/j;

    .line 23
    .line 24
    iget v3, v3, Landroidx/leanback/widget/j;->H:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/wr;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 32
    .line 33
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    :try_start_1
    move-object v10, v8

    .line 40
    check-cast v10, Lcom/google/android/gms/internal/ads/Ib;

    .line 41
    .line 42
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/Yv;

    .line 51
    .line 52
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 53
    .line 54
    new-instance v14, LR3/b;

    .line 55
    .line 56
    invoke-direct {v14, v6}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v15, Lcom/google/android/gms/internal/ads/vr;

    .line 60
    .line 61
    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/ads/vr;-><init>(Lcom/google/android/gms/internal/ads/sq;)V

    .line 62
    .line 63
    .line 64
    move-object/from16 v16, v7

    .line 65
    .line 66
    check-cast v16, Lcom/google/android/gms/internal/ads/hb;

    .line 67
    .line 68
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/Ib;->D1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v3, v8

    .line 75
    check-cast v3, Lcom/google/android/gms/internal/ads/Ib;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lcom/google/android/gms/internal/ads/Yv;

    .line 86
    .line 87
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 88
    .line 89
    new-instance v10, LR3/b;

    .line 90
    .line 91
    invoke-direct {v10, v6}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v11, Lcom/google/android/gms/internal/ads/vr;

    .line 95
    .line 96
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/vr;-><init>(Lcom/google/android/gms/internal/ads/sq;)V

    .line 97
    .line 98
    .line 99
    move-object v12, v7

    .line 100
    check-cast v12, Lcom/google/android/gms/internal/ads/hb;

    .line 101
    .line 102
    move-object v6, v3

    .line 103
    move-object v7, v0

    .line 104
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Ib;->X1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object/from16 v5, p0

    .line 110
    .line 111
    :goto_0
    const-string v1, "Remote exception loading a rewarded RTB ad"

    .line 112
    .line 113
    invoke-static {v1, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/Qq;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/google/android/gms/internal/ads/Ib;

    .line 10
    .line 11
    sget-object v4, Lf3/a;->J:Lf3/a;

    .line 12
    .line 13
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Qq;-><init>(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ib;Lf3/a;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, La3/b;

    .line 17
    .line 18
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/sq;->a:Ljava/lang/String;

    .line 19
    .line 20
    move-object/from16 v5, p1

    .line 21
    .line 22
    invoke-direct {v3, v5, v0, v4}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cn;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/cn;-><init>(Lcom/google/android/gms/internal/ads/gl;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/google/android/gms/internal/ads/Pg;

    .line 31
    .line 32
    move-object/from16 v5, p0

    .line 33
    .line 34
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/wr;->b:Lcom/google/android/gms/internal/ads/Qg;

    .line 35
    .line 36
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/Qg;->d:Lcom/google/android/gms/internal/ads/Qg;

    .line 37
    .line 38
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Qg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 39
    .line 40
    invoke-direct {v4, v6, v7, v3, v0}, Lcom/google/android/gms/internal/ads/Pg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Qg;La3/b;Lcom/google/android/gms/internal/ads/cn;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->g0:Lcom/google/android/gms/internal/ads/MJ;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/google/android/gms/internal/ads/zj;

    .line 50
    .line 51
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 54
    .line 55
    check-cast v1, Lcom/google/android/gms/internal/ads/Nq;

    .line 56
    .line 57
    new-instance v2, Lcom/google/android/gms/internal/ads/Hr;

    .line 58
    .line 59
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Pg;->k0:Lcom/google/android/gms/internal/ads/MJ;

    .line 60
    .line 61
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v9, v3

    .line 66
    check-cast v9, Lcom/google/android/gms/internal/ads/nj;

    .line 67
    .line 68
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Pg;->m0:Lcom/google/android/gms/internal/ads/MJ;

    .line 69
    .line 70
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v10, v3

    .line 75
    check-cast v10, Lcom/google/android/gms/internal/ads/Nk;

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v11, v0

    .line 82
    check-cast v11, Lcom/google/android/gms/internal/ads/zj;

    .line 83
    .line 84
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->j0:Lcom/google/android/gms/internal/ads/MJ;

    .line 85
    .line 86
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v12, v0

    .line 91
    check-cast v12, Lcom/google/android/gms/internal/ads/Fj;

    .line 92
    .line 93
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->n0:Lcom/google/android/gms/internal/ads/MJ;

    .line 94
    .line 95
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v13, v0

    .line 100
    check-cast v13, Lcom/google/android/gms/internal/ads/Hj;

    .line 101
    .line 102
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->t0:Lcom/google/android/gms/internal/ads/MJ;

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    move-object v14, v0

    .line 109
    check-cast v14, Lcom/google/android/gms/internal/ads/wj;

    .line 110
    .line 111
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/Qg;->g0:Lcom/google/android/gms/internal/ads/MJ;

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    move-object v15, v0

    .line 118
    check-cast v15, Lcom/google/android/gms/internal/ads/jk;

    .line 119
    .line 120
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    move-object/from16 v16, v0

    .line 127
    .line 128
    check-cast v16, Lcom/google/android/gms/internal/ads/Uk;

    .line 129
    .line 130
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->p0:Lcom/google/android/gms/internal/ads/MJ;

    .line 131
    .line 132
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move-object/from16 v17, v0

    .line 137
    .line 138
    check-cast v17, Lcom/google/android/gms/internal/ads/Qj;

    .line 139
    .line 140
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->v0:Lcom/google/android/gms/internal/ads/MJ;

    .line 141
    .line 142
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object/from16 v18, v0

    .line 147
    .line 148
    check-cast v18, Lcom/google/android/gms/internal/ads/Rk;

    .line 149
    .line 150
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Pg;->r0:Lcom/google/android/gms/internal/ads/MJ;

    .line 151
    .line 152
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object/from16 v19, v0

    .line 157
    .line 158
    check-cast v19, Lcom/google/android/gms/internal/ads/hk;

    .line 159
    .line 160
    move-object v8, v2

    .line 161
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/Hr;-><init>(Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Nk;Lcom/google/android/gms/internal/ads/zj;Lcom/google/android/gms/internal/ads/Fj;Lcom/google/android/gms/internal/ads/Hj;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/jk;Lcom/google/android/gms/internal/ads/Uk;Lcom/google/android/gms/internal/ads/Qj;Lcom/google/android/gms/internal/ads/Rk;Lcom/google/android/gms/internal/ads/hk;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Nq;->A3(Lcom/google/android/gms/internal/ads/Mr;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Pg;->G0()Lcom/google/android/gms/internal/ads/bn;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method
