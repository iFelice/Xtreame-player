.class public final synthetic Lcom/google/android/gms/internal/ads/Pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Pf;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/C4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/C4;->T:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/C4;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/C4;->U:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/C4;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/C4;->U:Z

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/C4;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/C4;->h(Lcom/google/android/gms/internal/ads/C4;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/google/android/gms/internal/ads/C4;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 38
    .line 39
    const/16 v2, 0x7e7

    .line 40
    .line 41
    const-wide/16 v3, -0x1

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/google/android/gms/internal/ads/C4;

    .line 49
    .line 50
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/C4;->T:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/gms/internal/ads/C4;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/C4;->U:Z

    .line 59
    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw v0

    .line 65
    :catchall_1
    move-exception v1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :try_start_3
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    throw v1
.end method

.method private final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/D4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/D4;->b:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/D4;->c:Landroid/os/ConditionVariable;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/D4;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/D4;->b:Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->q2:Lcom/google/android/gms/internal/ads/f8;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Lcom/google/android/gms/internal/ads/D4;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/D4;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 50
    .line 51
    const-string v4, "ADSHIELD"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Gy;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Gy;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sput-object v3, Lcom/google/android/gms/internal/ads/D4;->d:Lcom/google/android/gms/internal/ads/Gy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .line 59
    :cond_2
    move v1, v2

    .line 60
    :catchall_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lcom/google/android/gms/internal/ads/D4;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/D4;->b:Ljava/lang/Boolean;

    .line 69
    .line 70
    sget-object v1, Lcom/google/android/gms/internal/ads/D4;->c:Landroid/os/ConditionVariable;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    throw v1
.end method

.method private final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/N5;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/N5;->I:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/N5;

    .line 11
    .line 12
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/N5;->J:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/N5;->K:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/N5;->J:Z

    .line 22
    .line 23
    const-string v1, "App went background"

    .line 24
    .line 25
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lcom/google/android/gms/internal/ads/N5;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/N5;->L:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/google/android/gms/internal/ads/O5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/O5;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v3

    .line 57
    :try_start_2
    const-string v4, ""

    .line 58
    .line 59
    invoke-static {v4, v3}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "App is still foreground"

    .line 64
    .line 65
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw v1
.end method

.method private final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/f8;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, LJ2/t;

    .line 9
    .line 10
    iget-boolean v2, v1, LJ2/t;->H:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/D5;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [B

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/ads/B5;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, LJ2/t;

    .line 38
    .line 39
    iget-object v1, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lcom/google/android/gms/internal/ads/D5;

    .line 42
    .line 43
    check-cast v1, Lcom/google/android/gms/internal/ads/B5;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, LJ2/t;

    .line 60
    .line 61
    iget-object v1, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lcom/google/android/gms/internal/ads/D5;

    .line 64
    .line 65
    iget v2, v0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 66
    .line 67
    check-cast v1, Lcom/google/android/gms/internal/ads/B5;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, LJ2/t;

    .line 83
    .line 84
    iget-object v1, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lcom/google/android/gms/internal/ads/D5;

    .line 87
    .line 88
    check-cast v1, Lcom/google/android/gms/internal/ads/B5;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x4

    .line 99
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, LJ2/t;

    .line 105
    .line 106
    iget-object v1, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lcom/google/android/gms/internal/ads/D5;

    .line 109
    .line 110
    check-cast v1, Lcom/google/android/gms/internal/ads/B5;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/4 v3, 0x3

    .line 117
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_0
    monitor-exit v0

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    :try_start_1
    const-string v2, "Clearcut log failed"

    .line 126
    .line 127
    invoke-static {v2, v1}, Lp3/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    :goto_0
    return-void

    .line 132
    :goto_1
    monitor-exit v0

    .line 133
    throw v1
.end method

.method private final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Nd;

    .line 4
    .line 5
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/android/gms/internal/ads/W7;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/W7;->a()Lcom/google/android/gms/internal/ads/V7;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget v3, v2, Lcom/google/android/gms/internal/ads/V7;->G:I

    .line 20
    .line 21
    packed-switch v3, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :pswitch_0
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 28
    .line 29
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/W7;->c:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4

    .line 42
    :try_start_1
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 43
    .line 44
    iget-object v5, v5, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/le;->c()Lcom/google/android/gms/internal/ads/Nd;

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/W7;->b:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/Nd;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Nd;->c(Ljava/util/LinkedHashMap;Lcom/google/android/gms/internal/ads/V7;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "CsiReporter:reporter interrupted"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private final f()V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v14, v0

    .line 6
    check-cast v14, Lcom/google/android/gms/internal/ads/nf;

    .line 7
    .line 8
    const-string v0, "Timeout reached. Limit: "

    .line 9
    .line 10
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nf;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v15

    .line 16
    const-string v19, "error"

    .line 17
    .line 18
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->v:Lcom/google/android/gms/internal/ads/J7;

    .line 19
    .line 20
    sget-object v12, Ll3/q;->d:Ll3/q;

    .line 21
    .line 22
    iget-object v3, v12, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/16 v4, 0x3e8

    .line 35
    .line 36
    mul-long v2, v2, v4

    .line 37
    .line 38
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->q:Lcom/google/android/gms/internal/ads/J7;

    .line 39
    .line 40
    iget-object v5, v12, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-long v10, v4

    .line 53
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 54
    .line 55
    iget-object v5, v12, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :try_start_1
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 69
    .line 70
    iget-object v5, v5, Lk3/l;->j:LP3/b;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    iget-wide v7, v14, Lcom/google/android/gms/internal/ads/nf;->O:J

    .line 80
    .line 81
    sub-long/2addr v5, v7

    .line 82
    cmp-long v7, v5, v2

    .line 83
    .line 84
    if-gtz v7, :cond_c

    .line 85
    .line 86
    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/nf;->L:Z

    .line 87
    .line 88
    if-nez v0, :cond_b

    .line 89
    .line 90
    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/nf;->M:Z

    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    monitor-exit v14

    .line 95
    move-object v1, v14

    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_0
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aL;->e()J

    .line 105
    .line 106
    .line 107
    move-result-wide v20

    .line 108
    const-wide/16 v22, 0x0

    .line 109
    .line 110
    cmp-long v0, v20, v22

    .line 111
    .line 112
    if-lez v0, :cond_8

    .line 113
    .line 114
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aL;->d()J

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    iget-wide v2, v14, Lcom/google/android/gms/internal/ads/nf;->P:J

    .line 123
    .line 124
    cmp-long v0, v8, v2

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    cmp-long v0, v8, v22

    .line 129
    .line 130
    if-lez v0, :cond_1

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    const/16 v16, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    :goto_0
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 140
    .line 141
    const-wide/16 v2, -0x1

    .line 142
    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 146
    .line 147
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 148
    .line 149
    if-eqz v6, :cond_2

    .line 150
    .line 151
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 152
    .line 153
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 154
    .line 155
    if-eqz v6, :cond_2

    .line 156
    .line 157
    move-wide/from16 v5, v22

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    iget v5, v5, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 161
    .line 162
    int-to-long v5, v5

    .line 163
    :goto_1
    move-wide/from16 v17, v5

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    move-wide/from16 v17, v2

    .line 167
    .line 168
    :goto_2
    if-eqz v4, :cond_4

    .line 169
    .line 170
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 171
    .line 172
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vf;->s()J

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    move-wide/from16 v24, v5

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    move-wide/from16 v24, v2

    .line 180
    .line 181
    :goto_3
    if-eqz v4, :cond_5

    .line 182
    .line 183
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vf;->n()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    :cond_5
    move-wide/from16 v26, v2

    .line 190
    .line 191
    sget-object v2, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 194
    .line 195
    .line 196
    move-result v28

    .line 197
    sget-object v2, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 200
    .line 201
    .line 202
    move-result v29

    .line 203
    sget-object v13, Lp3/d;->b:LE1/W;

    .line 204
    .line 205
    new-instance v6, Lcom/google/android/gms/internal/ads/ef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 207
    move-object v2, v6

    .line 208
    move-object v3, v14

    .line 209
    move-object v4, v0

    .line 210
    move-object v5, v15

    .line 211
    move-object v0, v6

    .line 212
    move-wide v6, v8

    .line 213
    move-wide/from16 v30, v8

    .line 214
    .line 215
    move-wide/from16 v8, v20

    .line 216
    .line 217
    move-wide/from16 v32, v10

    .line 218
    .line 219
    move-wide/from16 v10, v17

    .line 220
    .line 221
    move-object/from16 v34, v12

    .line 222
    .line 223
    move-object v1, v13

    .line 224
    move-wide/from16 v12, v24

    .line 225
    .line 226
    move-object/from16 v35, v14

    .line 227
    .line 228
    move-object/from16 v24, v15

    .line 229
    .line 230
    move-wide/from16 v14, v26

    .line 231
    .line 232
    move/from16 v17, v28

    .line 233
    .line 234
    move/from16 v18, v29

    .line 235
    .line 236
    :try_start_2
    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    .line 242
    move-wide/from16 v2, v30

    .line 243
    .line 244
    move-object/from16 v1, v35

    .line 245
    .line 246
    :try_start_3
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/nf;->P:J

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    move-object/from16 v1, v35

    .line 251
    .line 252
    goto/16 :goto_5

    .line 253
    .line 254
    :catchall_1
    move-exception v0

    .line 255
    move-object v1, v14

    .line 256
    move-object/from16 v24, v15

    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_6
    move-wide v2, v8

    .line 261
    move-wide/from16 v32, v10

    .line 262
    .line 263
    move-object/from16 v34, v12

    .line 264
    .line 265
    move-object v1, v14

    .line 266
    move-object/from16 v24, v15

    .line 267
    .line 268
    :goto_4
    cmp-long v0, v2, v20

    .line 269
    .line 270
    if-ltz v0, :cond_7

    .line 271
    .line 272
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 273
    .line 274
    sget-object v0, Lp3/d;->b:LE1/W;

    .line 275
    .line 276
    new-instance v9, Lcom/google/android/gms/internal/ads/hf;

    .line 277
    .line 278
    const/4 v8, 0x0

    .line 279
    move-object v2, v9

    .line 280
    move-object v3, v1

    .line 281
    move-object/from16 v5, v24

    .line 282
    .line 283
    move-wide/from16 v6, v20

    .line 284
    .line 285
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/hf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    .line 290
    .line 291
    monitor-exit v1

    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :catchall_2
    move-exception v0

    .line 295
    goto :goto_5

    .line 296
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 297
    .line 298
    iget v0, v0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 299
    .line 300
    int-to-long v4, v0

    .line 301
    cmp-long v0, v4, v32

    .line 302
    .line 303
    if-ltz v0, :cond_9

    .line 304
    .line 305
    cmp-long v0, v2, v22

    .line 306
    .line 307
    if-lez v0, :cond_9

    .line 308
    .line 309
    monitor-exit v1

    .line 310
    goto/16 :goto_8

    .line 311
    .line 312
    :cond_8
    move-object/from16 v34, v12

    .line 313
    .line 314
    move-object v1, v14

    .line 315
    move-object/from16 v24, v15

    .line 316
    .line 317
    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 318
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w:Lcom/google/android/gms/internal/ads/J7;

    .line 319
    .line 320
    move-object/from16 v2, v34

    .line 321
    .line 322
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Ljava/lang/Long;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 335
    .line 336
    new-instance v4, Lcom/google/android/gms/internal/ads/Pf;

    .line 337
    .line 338
    const/16 v5, 0xf

    .line 339
    .line 340
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :cond_a
    move-object v1, v14

    .line 349
    move-object/from16 v24, v15

    .line 350
    .line 351
    :try_start_4
    const-string v19, "exoPlayerReleased"

    .line 352
    .line 353
    new-instance v0, Ljava/io/IOException;

    .line 354
    .line 355
    const-string v2, "ExoPlayer was released during preloading."

    .line 356
    .line 357
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :cond_b
    move-object v1, v14

    .line 362
    move-object/from16 v24, v15

    .line 363
    .line 364
    const-string v19, "externalAbort"

    .line 365
    .line 366
    new-instance v0, Ljava/io/IOException;

    .line 367
    .line 368
    const-string v2, "Abort requested before buffering finished. "

    .line 369
    .line 370
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_c
    move-object v1, v14

    .line 375
    move-object/from16 v24, v15

    .line 376
    .line 377
    const-string v19, "downloadTimeout"

    .line 378
    .line 379
    new-instance v4, Ljava/io/IOException;

    .line 380
    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v0, " ms"

    .line 390
    .line 391
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v4

    .line 402
    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 403
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    :goto_6
    move-object/from16 v2, v19

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :catch_1
    move-exception v0

    .line 409
    move-object v1, v14

    .line 410
    move-object/from16 v24, v15

    .line 411
    .line 412
    goto :goto_6

    .line 413
    :goto_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v6, "Failed to preload url "

    .line 422
    .line 423
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v3, " Exception: "

    .line 430
    .line 431
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-static {v3}, Lp3/h;->g(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v3, "VideoStreamExoPlayerCache.preload"

    .line 445
    .line 446
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 447
    .line 448
    iget-object v4, v4, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 449
    .line 450
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nf;->j()V

    .line 454
    .line 455
    .line 456
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/nf;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 461
    .line 462
    move-object/from16 v4, v24

    .line 463
    .line 464
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    :goto_8
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 468
    .line 469
    iget-object v0, v0, Lk3/l;->y:Lcom/google/android/gms/internal/ads/cf;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/nf;->N:Lcom/google/android/gms/internal/ads/bf;

    .line 472
    .line 473
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cf;->G:Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    :goto_9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Pf;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/Gm;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v2, "#008 Must be called on the main UI thread."

    .line 18
    .line 19
    invoke-static {v2}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gm;->B3()V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Gm;->I:Lcom/google/android/gms/internal/ads/El;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/El;->w()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Gm;->I:Lcom/google/android/gms/internal/ads/El;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Gm;->G:Landroid/view/View;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Gm;->H:Ll3/B0;

    .line 37
    .line 38
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Gm;->J:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "#007 Could not call remote method."

    .line 43
    .line 44
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/Rl;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Rl;->M:Landroid/view/View;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Landroid/view/View;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Rl;->J:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Rl;->M:Landroid/view/View;

    .line 68
    .line 69
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    const/4 v4, -0x1

    .line 72
    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Rl;->J:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Rl;->M:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eq v1, v2, :cond_2

    .line 87
    .line 88
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Rl;->J:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Rl;->M:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lcom/google/android/gms/internal/ads/Ll;

    .line 99
    .line 100
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ll;->zzp()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Lcom/google/android/gms/internal/ads/wj;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wj;->a1()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lcom/google/android/gms/internal/ads/Wi;

    .line 115
    .line 116
    monitor-enter v0

    .line 117
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Wi;->K:Lcom/google/android/gms/internal/ads/pC;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/GB;->isDone()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    monitor-exit v0

    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Wi;->K:Lcom/google/android/gms/internal/ads/pC;

    .line 130
    .line 131
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/pC;->f(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    monitor-exit v0

    .line 137
    :goto_1
    return-void

    .line 138
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    throw v1

    .line 140
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/google/android/gms/internal/ads/Si;

    .line 143
    .line 144
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Si;->I:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v1}, Lf/b;->y0(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Si;->N:Z

    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_5
    new-instance v0, Lcom/google/android/gms/internal/ads/Bo;

    .line 153
    .line 154
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v1, Lcom/google/android/gms/internal/ads/dC;

    .line 160
    .line 161
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dC;->zza(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lg0/a;

    .line 168
    .line 169
    iput-boolean v3, v0, Lg0/a;->a:Z

    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lcom/google/android/gms/internal/ads/Oh;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Oh;->o:Lcom/google/android/gms/internal/ads/Nl;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Nl;->d:Lcom/google/android/gms/internal/ads/s9;

    .line 179
    .line 180
    if-nez v1, :cond_4

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Oh;->q:Lcom/google/android/gms/internal/ads/EJ;

    .line 184
    .line 185
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ll3/J;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Oh;->j:Landroid/content/Context;

    .line 192
    .line 193
    new-instance v3, LR3/b;

    .line 194
    .line 195
    invoke-direct {v3, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    check-cast v1, Lcom/google/android/gms/internal/ads/r9;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 216
    .line 217
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    return-void

    .line 221
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lcom/google/android/gms/internal/ads/wh;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wh;->H:Lcom/google/android/gms/internal/ads/xh;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xh;->d:Lcom/google/android/gms/internal/ads/Bh;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bh;->b()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lcom/google/android/gms/internal/ads/wh;

    .line 236
    .line 237
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wh;->H:Lcom/google/android/gms/internal/ads/xh;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xh;->d:Lcom/google/android/gms/internal/ads/Bh;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bh;->a()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v0, Lcom/google/android/gms/internal/ads/Sf;

    .line 248
    .line 249
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Sf;->G(Lcom/google/android/gms/internal/ads/Sf;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_b
    sget v0, Lcom/google/android/gms/internal/ads/Xf;->l0:I

    .line 254
    .line 255
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 256
    .line 257
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->c()Lcom/google/android/gms/internal/ads/Nd;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v2, Ljava/lang/String;

    .line 266
    .line 267
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Nd;->g:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v3, Ljava/util/HashSet;

    .line 270
    .line 271
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_5

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_5
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Nd;->f:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v4, Ljava/lang/String;

    .line 286
    .line 287
    const-string v5, "sdkVersion"

    .line 288
    .line 289
    invoke-virtual {v3, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const-string v4, "ue"

    .line 293
    .line 294
    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 300
    .line 301
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Nd;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Nd;->c(Ljava/util/LinkedHashMap;Lcom/google/android/gms/internal/ads/V7;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    return-void

    .line 309
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lcom/google/android/gms/internal/ads/Xf;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 314
    .line 315
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->F0()V

    .line 316
    .line 317
    .line 318
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->B()Ln3/k;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_6

    .line 323
    .line 324
    iget-object v1, v0, Ln3/k;->R:Ln3/i;

    .line 325
    .line 326
    iget-object v2, v0, Ln3/k;->L:Ln3/n;

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v4}, Ln3/k;->E3(Z)V

    .line 332
    .line 333
    .line 334
    :cond_6
    return-void

    .line 335
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->f()V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_e
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 340
    .line 341
    iget-object v0, v0, Lk3/l;->y:Lcom/google/android/gms/internal/ads/cf;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lcom/google/android/gms/internal/ads/bf;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cf;->G:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lcom/google/android/gms/internal/ads/Ce;

    .line 356
    .line 357
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 358
    .line 359
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ge;->N:Z

    .line 360
    .line 361
    if-eqz v2, :cond_7

    .line 362
    .line 363
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->W:Landroid/widget/ImageView;

    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-eqz v2, :cond_7

    .line 370
    .line 371
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->H:Landroid/widget/FrameLayout;

    .line 372
    .line 373
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ge;->W:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 379
    .line 380
    if-nez v2, :cond_8

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_8
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 384
    .line 385
    if-eqz v5, :cond_b

    .line 386
    .line 387
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 388
    .line 389
    iget-object v6, v5, Lk3/l;->j:LP3/b;

    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 395
    .line 396
    .line 397
    move-result-wide v6

    .line 398
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 399
    .line 400
    invoke-virtual {v2, v8}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-eqz v2, :cond_9

    .line 405
    .line 406
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Ge;->a0:Z

    .line 407
    .line 408
    :cond_9
    iget-object v2, v5, Lk3/l;->j:LP3/b;

    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 414
    .line 415
    .line 416
    move-result-wide v4

    .line 417
    sub-long/2addr v4, v6

    .line 418
    invoke-static {}, Lo3/I;->m()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_a

    .line 423
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v6, "Spinner frame grab took "

    .line 427
    .line 428
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v6, "ms"

    .line 435
    .line 436
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_a
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Ge;->L:J

    .line 447
    .line 448
    cmp-long v2, v4, v6

    .line 449
    .line 450
    if-lez v2, :cond_b

    .line 451
    .line 452
    const-string v2, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 453
    .line 454
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/Ge;->Q:Z

    .line 458
    .line 459
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 460
    .line 461
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ge;->J:Lcom/google/android/gms/internal/ads/W7;

    .line 462
    .line 463
    if-eqz v0, :cond_b

    .line 464
    .line 465
    const-string v1, "spinner_jank"

    .line 466
    .line 467
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :cond_b
    :goto_5
    return-void

    .line 475
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Lcom/google/android/gms/internal/ads/De;

    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/De;->x()V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v0, LJ3/k;

    .line 486
    .line 487
    iget-object v1, v0, LJ3/k;->H:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v1, Lcom/google/android/gms/internal/ads/n6;

    .line 490
    .line 491
    if-nez v1, :cond_c

    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_c
    iget-object v0, v0, LJ3/k;->H:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v0, Lcom/google/android/gms/internal/ads/n6;

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->disconnect()V

    .line 499
    .line 500
    .line 501
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 502
    .line 503
    .line 504
    :goto_6
    return-void

    .line 505
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v0, Lcom/google/android/gms/internal/ads/c8;

    .line 508
    .line 509
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c8;->d()V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->e()V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->d()V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Lcom/google/android/gms/internal/ads/rs;

    .line 524
    .line 525
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rs;->p(Lcom/google/android/gms/internal/ads/rs;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->c()V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v0, Lcom/google/android/gms/internal/ads/H5;

    .line 536
    .line 537
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Lcom/google/android/gms/internal/ads/s5;

    .line 544
    .line 545
    :try_start_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 546
    .line 547
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/V4;->c:Ldalvik/system/DexClassLoader;

    .line 548
    .line 549
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/V4;->e:[B

    .line 550
    .line 551
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/s5;->b:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/V4;->d:Lcom/google/android/gms/internal/ads/M4;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/M4;->b([BLjava/lang/String;)[B

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    new-instance v3, Ljava/lang/String;

    .line 563
    .line 564
    const-string v4, "UTF-8"

    .line 565
    .line 566
    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    if-eqz v1, :cond_d

    .line 574
    .line 575
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 576
    .line 577
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/V4;->e:[B

    .line 578
    .line 579
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/s5;->c:Ljava/lang/String;

    .line 580
    .line 581
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/V4;->d:Lcom/google/android/gms/internal/ads/M4;

    .line 582
    .line 583
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/M4;->b([BLjava/lang/String;)[B

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    new-instance v3, Ljava/lang/String;

    .line 591
    .line 592
    const-string v4, "UTF-8"

    .line 593
    .line 594
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s5;->e:[Ljava/lang/Class;

    .line 598
    .line 599
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/s5;->d:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/L4; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 604
    .line 605
    goto :goto_7

    .line 606
    :catchall_1
    move-exception v1

    .line 607
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s5;->f:Ljava/util/concurrent/CountDownLatch;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 610
    .line 611
    .line 612
    throw v1

    .line 613
    :catch_2
    :cond_d
    :goto_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s5;->f:Ljava/util/concurrent/CountDownLatch;

    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v0, Lcom/google/android/gms/internal/ads/Z4;

    .line 622
    .line 623
    sget-object v1, Lcom/google/android/gms/internal/ads/Z4;->S:Landroid/os/Handler;

    .line 624
    .line 625
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Z4;->c()V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :pswitch_1a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->b()V

    .line 630
    .line 631
    .line 632
    return-void

    .line 633
    :pswitch_1b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Pf;->a()V

    .line 634
    .line 635
    .line 636
    return-void

    .line 637
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pf;->H:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v0, Lcom/google/android/gms/internal/ads/mq;

    .line 640
    .line 641
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 642
    .line 643
    iget-object v1, v1, Lk3/l;->v:Lc4/y;

    .line 644
    .line 645
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    new-instance v1, Lcom/google/android/gms/internal/ads/kq;

    .line 651
    .line 652
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/kq;-><init>(Lcom/google/android/gms/internal/ads/xx;I)V

    .line 653
    .line 654
    .line 655
    invoke-static {v1}, Lc4/y;->k(Ljava/lang/Runnable;)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
