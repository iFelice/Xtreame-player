.class public final synthetic Lcom/google/android/gms/internal/ads/Tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Uf;

.field public final synthetic H:I

.field public final synthetic I:I

.field public final synthetic J:Z

.field public final synthetic K:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Uf;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tf;->G:Lcom/google/android/gms/internal/ads/Uf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Tf;->H:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/Tf;->I:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Tf;->J:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Tf;->K:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tf;->G:Lcom/google/android/gms/internal/ads/Uf;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tf;->H:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/Tf;->I:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Tf;->J:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/Tf;->K:Z

    .line 10
    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Uf;->H:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/Uf;->M:Z

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    if-ne v2, v8, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v9, v2

    .line 27
    const/4 v10, 0x0

    .line 28
    :goto_0
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v9, v8, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v9, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_2
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/4 v11, 0x2

    .line 44
    if-ne v9, v11, :cond_3

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/4 v11, 0x0

    .line 49
    :goto_3
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-ne v9, v1, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 57
    :goto_4
    if-nez v6, :cond_5

    .line 58
    .line 59
    if-eqz v10, :cond_6

    .line 60
    .line 61
    :cond_5
    const/4 v7, 0x1

    .line 62
    :cond_6
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/Uf;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    if-eqz v10, :cond_7

    .line 65
    .line 66
    :try_start_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Uf;->L:Ll3/D0;

    .line 67
    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    invoke-interface {v6}, Ll3/D0;->zzi()V

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_8

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto :goto_6

    .line 78
    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    .line 79
    .line 80
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Uf;->L:Ll3/D0;

    .line 81
    .line 82
    if-eqz v2, :cond_8

    .line 83
    .line 84
    invoke-interface {v2}, Ll3/D0;->zzh()V

    .line 85
    .line 86
    .line 87
    :cond_8
    if-eqz v11, :cond_9

    .line 88
    .line 89
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Uf;->L:Ll3/D0;

    .line 90
    .line 91
    if-eqz v2, :cond_9

    .line 92
    .line 93
    invoke-interface {v2}, Ll3/D0;->zzg()V

    .line 94
    .line 95
    .line 96
    :cond_9
    if-eqz v1, :cond_b

    .line 97
    .line 98
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Uf;->L:Ll3/D0;

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-interface {v1}, Ll3/D0;->b()V

    .line 103
    .line 104
    .line 105
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Uf;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 106
    .line 107
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Oe;->p()V

    .line 108
    .line 109
    .line 110
    :cond_b
    if-eq v3, v4, :cond_c

    .line 111
    .line 112
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Uf;->L:Ll3/D0;

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    invoke-interface {v0, v4}, Ll3/D0;->K2(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :goto_6
    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 121
    .line 122
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    .line 124
    .line 125
    :cond_c
    :goto_7
    monitor-exit v5

    .line 126
    return-void

    .line 127
    :goto_8
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    throw v0
.end method
