.class public final Lcom/google/android/gms/internal/ads/Cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vq;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/Gh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Gh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Cq;->b:Lcom/google/android/gms/internal/ads/Gh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Ib;

    .line 4
    .line 5
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Ov;->Z:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ib;->a3(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lcom/google/android/gms/internal/ads/Ib;

    .line 14
    .line 15
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lcom/google/android/gms/internal/ads/Yv;

    .line 28
    .line 29
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Cq;->a:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v5, LR3/b;

    .line 34
    .line 35
    invoke-direct {v5, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/google/android/gms/internal/ads/Bq;

    .line 39
    .line 40
    invoke-direct {v6, p3}, Lcom/google/android/gms/internal/ads/Bq;-><init>(Lcom/google/android/gms/internal/ads/sq;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 44
    .line 45
    move-object v7, p1

    .line 46
    check-cast v7, Lcom/google/android/gms/internal/ads/hb;

    .line 47
    .line 48
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Ib;->F2(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/yb;Lcom/google/android/gms/internal/ads/hb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string p2, "Remote exception loading an app open RTB ad"

    .line 54
    .line 55
    invoke-static {p2, p1}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw p2
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)Ljava/lang/Object;
    .locals 23

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
    sget-object v4, Lf3/a;->M:Lf3/a;

    .line 12
    .line 13
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Qq;-><init>(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ib;Lf3/a;)V

    .line 14
    .line 15
    .line 16
    new-instance v8, La3/b;

    .line 17
    .line 18
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/sq;->a:Ljava/lang/String;

    .line 19
    .line 20
    move-object/from16 v4, p1

    .line 21
    .line 22
    invoke-direct {v8, v4, v0, v3}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/google/android/gms/internal/ads/x;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/16 v4, 0x16

    .line 29
    .line 30
    invoke-direct {v9, v4, v2, v3}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v10, Landroidx/leanback/widget/j;

    .line 34
    .line 35
    iget v0, v0, Lcom/google/android/gms/internal/ads/Ov;->a0:I

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-direct {v10, v0, v3}, Landroidx/leanback/widget/j;-><init>(II)V

    .line 39
    .line 40
    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Cq;->b:Lcom/google/android/gms/internal/ads/Gh;

    .line 44
    .line 45
    check-cast v3, Lcom/google/android/gms/internal/ads/Eg;

    .line 46
    .line 47
    new-instance v4, Lcom/google/android/gms/internal/ads/Cg;

    .line 48
    .line 49
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Eg;->d:Lcom/google/android/gms/internal/ads/Eg;

    .line 50
    .line 51
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Eg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    move-object v7, v11

    .line 55
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Cg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Eg;La3/b;Lcom/google/android/gms/internal/ads/x;Landroidx/leanback/widget/j;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->h0:Lcom/google/android/gms/internal/ads/MJ;

    .line 59
    .line 60
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcom/google/android/gms/internal/ads/zj;

    .line 65
    .line 66
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 69
    .line 70
    check-cast v1, Lcom/google/android/gms/internal/ads/Nq;

    .line 71
    .line 72
    new-instance v2, Lcom/google/android/gms/internal/ads/Ir;

    .line 73
    .line 74
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Cg;->l0:Lcom/google/android/gms/internal/ads/MJ;

    .line 75
    .line 76
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move-object v13, v5

    .line 81
    check-cast v13, Lcom/google/android/gms/internal/ads/nj;

    .line 82
    .line 83
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Cg;->n0:Lcom/google/android/gms/internal/ads/MJ;

    .line 84
    .line 85
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v14, v5

    .line 90
    check-cast v14, Lcom/google/android/gms/internal/ads/Nk;

    .line 91
    .line 92
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    move-object v15, v3

    .line 97
    check-cast v15, Lcom/google/android/gms/internal/ads/zj;

    .line 98
    .line 99
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->k0:Lcom/google/android/gms/internal/ads/MJ;

    .line 100
    .line 101
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v16, v3

    .line 106
    .line 107
    check-cast v16, Lcom/google/android/gms/internal/ads/Fj;

    .line 108
    .line 109
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->o0:Lcom/google/android/gms/internal/ads/MJ;

    .line 110
    .line 111
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object/from16 v17, v3

    .line 116
    .line 117
    check-cast v17, Lcom/google/android/gms/internal/ads/Hj;

    .line 118
    .line 119
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/Eg;->V0:Lcom/google/android/gms/internal/ads/MJ;

    .line 120
    .line 121
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move-object/from16 v18, v3

    .line 126
    .line 127
    check-cast v18, Lcom/google/android/gms/internal/ads/jk;

    .line 128
    .line 129
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->p0:Lcom/google/android/gms/internal/ads/MJ;

    .line 130
    .line 131
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    move-object/from16 v19, v3

    .line 136
    .line 137
    check-cast v19, Lcom/google/android/gms/internal/ads/Qj;

    .line 138
    .line 139
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 140
    .line 141
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    move-object/from16 v20, v3

    .line 146
    .line 147
    check-cast v20, Lcom/google/android/gms/internal/ads/Uk;

    .line 148
    .line 149
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->r0:Lcom/google/android/gms/internal/ads/MJ;

    .line 150
    .line 151
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    move-object/from16 v21, v3

    .line 156
    .line 157
    check-cast v21, Lcom/google/android/gms/internal/ads/hk;

    .line 158
    .line 159
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Cg;->t0:Lcom/google/android/gms/internal/ads/MJ;

    .line 160
    .line 161
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    move-object/from16 v22, v3

    .line 166
    .line 167
    check-cast v22, Lcom/google/android/gms/internal/ads/wj;

    .line 168
    .line 169
    move-object v12, v2

    .line 170
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/Ir;-><init>(Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Nk;Lcom/google/android/gms/internal/ads/zj;Lcom/google/android/gms/internal/ads/Fj;Lcom/google/android/gms/internal/ads/Hj;Lcom/google/android/gms/internal/ads/jk;Lcom/google/android/gms/internal/ads/Qj;Lcom/google/android/gms/internal/ads/Uk;Lcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/internal/ads/wj;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Nq;->A3(Lcom/google/android/gms/internal/ads/Mr;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Cg;->G0()Lcom/google/android/gms/internal/ads/Ih;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    return-object v1
.end method
