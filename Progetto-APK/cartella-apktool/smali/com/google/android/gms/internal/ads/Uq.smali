.class public final Lcom/google/android/gms/internal/ads/Uq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vq;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/Ng;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ng;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uq;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uq;->b:Lcom/google/android/gms/internal/ads/Ng;

    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Uq;->a:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v5, LR3/b;

    .line 34
    .line 35
    invoke-direct {v5, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/google/android/gms/internal/ads/Tq;

    .line 39
    .line 40
    invoke-direct {v6, p3}, Lcom/google/android/gms/internal/ads/Tq;-><init>(Lcom/google/android/gms/internal/ads/sq;)V

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
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Ib;->x0(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Cb;Lcom/google/android/gms/internal/ads/hb;)V
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
    const-string p2, "Remote exception loading a interstitial RTB ad"

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
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Qq;

    .line 2
    .line 3
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/Ib;

    .line 6
    .line 7
    sget-object v2, Lf3/a;->I:Lf3/a;

    .line 8
    .line 9
    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/Qq;-><init>(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ib;Lf3/a;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, La3/b;

    .line 13
    .line 14
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/sq;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2, v2}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    const/16 v2, 0x16

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Uq;->b:Lcom/google/android/gms/internal/ads/Ng;

    .line 28
    .line 29
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/Ng;->c(La3/b;Lcom/google/android/gms/internal/ads/x;)Lcom/google/android/gms/internal/ads/Mg;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->g0:Lcom/google/android/gms/internal/ads/MJ;

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/google/android/gms/internal/ads/zj;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 42
    .line 43
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 44
    .line 45
    check-cast p3, Lcom/google/android/gms/internal/ads/Nq;

    .line 46
    .line 47
    new-instance v11, Lcom/google/android/gms/internal/ads/Ir;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Mg;->k0:Lcom/google/android/gms/internal/ads/MJ;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lcom/google/android/gms/internal/ads/nj;

    .line 57
    .line 58
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Mg;->n0:Lcom/google/android/gms/internal/ads/MJ;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v2, v0

    .line 65
    check-cast v2, Lcom/google/android/gms/internal/ads/Nk;

    .line 66
    .line 67
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    move-object v3, p2

    .line 72
    check-cast v3, Lcom/google/android/gms/internal/ads/zj;

    .line 73
    .line 74
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->j0:Lcom/google/android/gms/internal/ads/MJ;

    .line 75
    .line 76
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    move-object v4, p2

    .line 81
    check-cast v4, Lcom/google/android/gms/internal/ads/Fj;

    .line 82
    .line 83
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->o0:Lcom/google/android/gms/internal/ads/MJ;

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    move-object v5, p2

    .line 90
    check-cast v5, Lcom/google/android/gms/internal/ads/Hj;

    .line 91
    .line 92
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->P:Lcom/google/android/gms/internal/ads/Ng;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Ng;->e1:Lcom/google/android/gms/internal/ads/MJ;

    .line 95
    .line 96
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    move-object v6, p2

    .line 101
    check-cast v6, Lcom/google/android/gms/internal/ads/jk;

    .line 102
    .line 103
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 104
    .line 105
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    move-object v7, p2

    .line 110
    check-cast v7, Lcom/google/android/gms/internal/ads/Qj;

    .line 111
    .line 112
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->r0:Lcom/google/android/gms/internal/ads/MJ;

    .line 113
    .line 114
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    move-object v8, p2

    .line 119
    check-cast v8, Lcom/google/android/gms/internal/ads/Uk;

    .line 120
    .line 121
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->s0:Lcom/google/android/gms/internal/ads/MJ;

    .line 122
    .line 123
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    move-object v9, p2

    .line 128
    check-cast v9, Lcom/google/android/gms/internal/ads/hk;

    .line 129
    .line 130
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Mg;->u0:Lcom/google/android/gms/internal/ads/MJ;

    .line 131
    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    move-object v10, p2

    .line 137
    check-cast v10, Lcom/google/android/gms/internal/ads/wj;

    .line 138
    .line 139
    move-object v0, v11

    .line 140
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/Ir;-><init>(Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Nk;Lcom/google/android/gms/internal/ads/zj;Lcom/google/android/gms/internal/ads/Fj;Lcom/google/android/gms/internal/ads/Hj;Lcom/google/android/gms/internal/ads/jk;Lcom/google/android/gms/internal/ads/Qj;Lcom/google/android/gms/internal/ads/Uk;Lcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/internal/ads/wj;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v11}, Lcom/google/android/gms/internal/ads/Nq;->A3(Lcom/google/android/gms/internal/ads/Mr;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mg;->G0()Lcom/google/android/gms/internal/ads/Vk;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1
.end method
