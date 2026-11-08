.class public final Lcom/google/android/gms/internal/ads/zq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gl;


# instance fields
.field public final G:Lp3/a;

.field public final H:LD4/b;

.field public final I:Lcom/google/android/gms/internal/ads/Ov;

.field public final J:Lcom/google/android/gms/internal/ads/Ef;

.field public final K:Lcom/google/android/gms/internal/ads/Yv;

.field public final L:Lcom/google/android/gms/internal/ads/P9;

.field public final M:Z

.field public final N:Lcom/google/android/gms/internal/ads/hq;


# direct methods
.method public constructor <init>(Lp3/a;Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Yv;ZLcom/google/android/gms/internal/ads/P9;Lcom/google/android/gms/internal/ads/hq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zq;->G:Lp3/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zq;->H:LD4/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zq;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zq;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zq;->K:Lcom/google/android/gms/internal/ads/Yv;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zq;->M:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zq;->L:Lcom/google/android/gms/internal/ads/P9;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zq;->N:Lcom/google/android/gms/internal/ads/hq;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zq;->H:LD4/b;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->g2(LD4/b;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/Cg;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zq;->J:Lcom/google/android/gms/internal/ads/Ef;

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
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zq;->L:Lcom/google/android/gms/internal/ads/P9;

    .line 20
    .line 21
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zq;->M:Z

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/P9;->c(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v6, 0x1

    .line 31
    :goto_0
    if-eqz v5, :cond_1

    .line 32
    .line 33
    monitor-enter v4

    .line 34
    :try_start_0
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/P9;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v4

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object v2, v0

    .line 40
    monitor-exit v4

    .line 41
    throw v2

    .line 42
    :cond_1
    const/4 v7, 0x0

    .line 43
    :goto_1
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/P9;->a()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    move v8, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v4, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zq;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 54
    .line 55
    iget-boolean v10, v12, Lcom/google/android/gms/internal/ads/Ov;->O:Z

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v9, 0x1

    .line 59
    move-object v4, v2

    .line 60
    move v5, v6

    .line 61
    move v6, v9

    .line 62
    move/from16 v9, p1

    .line 63
    .line 64
    invoke-direct/range {v4 .. v11}, Lk3/g;-><init>(ZZZFZZZ)V

    .line 65
    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/wj;->a()V

    .line 70
    .line 71
    .line 72
    :cond_3
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 73
    .line 74
    iget-object v4, v4, Lk3/l;->b:LF2/G;

    .line 75
    .line 76
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Cg;->v0:Lcom/google/android/gms/internal/ads/MJ;

    .line 79
    .line 80
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v5, v0

    .line 85
    check-cast v5, Lcom/google/android/gms/internal/ads/dl;

    .line 86
    .line 87
    iget v0, v12, Lcom/google/android/gms/internal/ads/Ov;->Q:I

    .line 88
    .line 89
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zq;->K:Lcom/google/android/gms/internal/ads/Yv;

    .line 90
    .line 91
    const/4 v6, -0x1

    .line 92
    if-eq v0, v6, :cond_4

    .line 93
    .line 94
    :goto_3
    move v7, v0

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Yv;->j:Ll3/h1;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget v0, v0, Ll3/h1;->G:I

    .line 101
    .line 102
    if-ne v0, v3, :cond_5

    .line 103
    .line 104
    const/4 v0, 0x7

    .line 105
    const/4 v7, 0x7

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    const/4 v6, 0x2

    .line 108
    if-ne v0, v6, :cond_6

    .line 109
    .line 110
    const/4 v0, 0x6

    .line 111
    const/4 v7, 0x6

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    const-string v0, "Error setting app open orientation; no targeting orientation available."

    .line 114
    .line 115
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v0, v12, Lcom/google/android/gms/internal/ads/Ov;->Q:I

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :goto_4
    iget-object v9, v12, Lcom/google/android/gms/internal/ads/Ov;->B:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 124
    .line 125
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Rv;->b:Ljava/lang/String;

    .line 126
    .line 127
    iget-boolean v6, v12, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 128
    .line 129
    if-eqz v6, :cond_7

    .line 130
    .line 131
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zq;->N:Lcom/google/android/gms/internal/ads/hq;

    .line 132
    .line 133
    :goto_5
    move-object/from16 v16, v6

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    const/4 v6, 0x0

    .line 137
    goto :goto_5

    .line 138
    :goto_6
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zq;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 141
    .line 142
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zq;->G:Lp3/a;

    .line 143
    .line 144
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 145
    .line 146
    move-object v4, v15

    .line 147
    move-object v10, v2

    .line 148
    move-object/from16 v14, p3

    .line 149
    .line 150
    move-object v0, v15

    .line 151
    move-object/from16 v15, v16

    .line 152
    .line 153
    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/Ef;ILp3/a;Ljava/lang/String;Lk3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/hq;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v2, p2

    .line 157
    .line 158
    invoke-static {v2, v0, v3}, LF2/G;->M(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
