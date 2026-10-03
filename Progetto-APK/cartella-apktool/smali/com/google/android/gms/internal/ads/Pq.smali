.class public final Lcom/google/android/gms/internal/ads/Pq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gl;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lp3/a;

.field public final I:LD4/b;

.field public final J:Lcom/google/android/gms/internal/ads/Ov;

.field public final K:Lcom/google/android/gms/internal/ads/Ef;

.field public final L:Lcom/google/android/gms/internal/ads/Yv;

.field public final M:Lcom/google/android/gms/internal/ads/P9;

.field public final N:Z

.field public final O:Lcom/google/android/gms/internal/ads/hq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Yv;ZLcom/google/android/gms/internal/ads/P9;Lcom/google/android/gms/internal/ads/hq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pq;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pq;->H:Lp3/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Pq;->I:LD4/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Pq;->J:Lcom/google/android/gms/internal/ads/Ov;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Pq;->K:Lcom/google/android/gms/internal/ads/Ef;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Pq;->L:Lcom/google/android/gms/internal/ads/Yv;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Pq;->M:Lcom/google/android/gms/internal/ads/P9;

    .line 17
    .line 18
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/Pq;->N:Z

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Pq;->O:Lcom/google/android/gms/internal/ads/hq;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Pq;->I:LD4/b;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->g2(LD4/b;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/Mg;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Pq;->K:Lcom/google/android/gms/internal/ads/Ef;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Ef;->G0(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lk3/g;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Pq;->M:Lcom/google/android/gms/internal/ads/P9;

    .line 20
    .line 21
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/Pq;->N:Z

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/P9;->c(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 32
    :goto_0
    sget-object v8, Lk3/l;->A:Lk3/l;

    .line 33
    .line 34
    iget-object v8, v8, Lk3/l;->c:Lo3/O;

    .line 35
    .line 36
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Pq;->G:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v8}, Lo3/O;->g(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    monitor-enter v4

    .line 45
    :try_start_0
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/P9;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit v4

    .line 48
    move v9, v6

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object v2, v0

    .line 52
    monitor-exit v4

    .line 53
    throw v2

    .line 54
    :cond_1
    const/4 v9, 0x0

    .line 55
    :goto_1
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/P9;->a()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    move v10, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 v4, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/Pq;->J:Lcom/google/android/gms/internal/ads/Ov;

    .line 66
    .line 67
    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/Ov;->O:Z

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    move-object v4, v2

    .line 71
    move v5, v7

    .line 72
    move v6, v8

    .line 73
    move v7, v9

    .line 74
    move v8, v10

    .line 75
    move/from16 v9, p1

    .line 76
    .line 77
    move v10, v11

    .line 78
    move v11, v13

    .line 79
    invoke-direct/range {v4 .. v11}, Lk3/g;-><init>(ZZZFZZZ)V

    .line 80
    .line 81
    .line 82
    if-eqz p3, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/wj;->a()V

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Mg;->v0:Lcom/google/android/gms/internal/ads/MJ;

    .line 90
    .line 91
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v5, v0

    .line 96
    check-cast v5, Lcom/google/android/gms/internal/ads/dl;

    .line 97
    .line 98
    iget v7, v12, Lcom/google/android/gms/internal/ads/Ov;->Q:I

    .line 99
    .line 100
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 101
    .line 102
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Rv;->b:Ljava/lang/String;

    .line 103
    .line 104
    iget-boolean v4, v12, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 105
    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Pq;->O:Lcom/google/android/gms/internal/ads/hq;

    .line 109
    .line 110
    :goto_3
    move-object/from16 v16, v4

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const/4 v4, 0x0

    .line 114
    goto :goto_3

    .line 115
    :goto_4
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Pq;->L:Lcom/google/android/gms/internal/ads/Yv;

    .line 116
    .line 117
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Pq;->K:Lcom/google/android/gms/internal/ads/Ef;

    .line 120
    .line 121
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Pq;->H:Lp3/a;

    .line 122
    .line 123
    iget-object v9, v12, Lcom/google/android/gms/internal/ads/Ov;->B:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 126
    .line 127
    move-object v4, v15

    .line 128
    move-object v10, v2

    .line 129
    move-object/from16 v14, p3

    .line 130
    .line 131
    move-object v0, v15

    .line 132
    move-object/from16 v15, v16

    .line 133
    .line 134
    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/Ef;ILp3/a;Ljava/lang/String;Lk3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/hq;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v2, p2

    .line 138
    .line 139
    invoke-static {v2, v0, v3}, LF2/G;->M(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
