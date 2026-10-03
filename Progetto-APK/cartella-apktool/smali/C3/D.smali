.class public final synthetic LC3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LC3/E;

.field public final synthetic I:I


# direct methods
.method public synthetic constructor <init>(LC3/E;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LC3/D;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LC3/D;->H:LC3/E;

    .line 7
    .line 8
    iput p2, p0, LC3/D;->I:I

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, LC3/D;->H:LC3/E;

    .line 4
    .line 5
    iget-object v3, v2, LC3/E;->H:LC3/F;

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    iput v4, v3, LC3/F;->n:I

    .line 9
    .line 10
    iput v4, v3, LC3/F;->o:I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput-object v4, v3, LC3/F;->j:LC3/d;

    .line 14
    .line 15
    iput-object v4, v3, LC3/F;->k:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    iput-wide v5, v3, LC3/F;->l:D

    .line 20
    .line 21
    invoke-virtual {v3}, LC3/F;->g()V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, v3, LC3/F;->m:Z

    .line 25
    .line 26
    iput-object v4, v3, LC3/F;->p:LC3/x;

    .line 27
    .line 28
    iget-object v3, v2, LC3/E;->H:LC3/F;

    .line 29
    .line 30
    iput v0, v3, LC3/F;->v:I

    .line 31
    .line 32
    iget v4, p0, LC3/D;->I:I

    .line 33
    .line 34
    iget-object v3, v3, LC3/F;->u:Ljava/util/List;

    .line 35
    .line 36
    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v5, v2, LC3/E;->H:LC3/F;

    .line 38
    .line 39
    iget-object v5, v5, LC3/F;->u:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, LD3/j;

    .line 56
    .line 57
    iget-object v6, v6, LD3/j;->a:LD3/c;

    .line 58
    .line 59
    iget-object v6, v6, LD3/c;->e:LD3/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :try_start_1
    new-instance v7, LJ3/b;

    .line 65
    .line 66
    invoke-direct {v7, v4}, LJ3/b;-><init>(I)V

    .line 67
    .line 68
    .line 69
    check-cast v6, LD3/p;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x3

    .line 79
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v6

    .line 84
    :try_start_2
    sget-object v7, LD3/c;->m:LH3/b;

    .line 85
    .line 86
    const-class v8, LD3/r;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/4 v9, 0x2

    .line 93
    new-array v9, v9, [Ljava/lang/Object;

    .line 94
    .line 95
    const-string v10, "onDisconnected"

    .line 96
    .line 97
    aput-object v10, v9, v1

    .line 98
    .line 99
    aput-object v8, v9, v0

    .line 100
    .line 101
    const-string v8, "Unable to call %s on %s."

    .line 102
    .line 103
    invoke-virtual {v7, v6, v8, v9}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    iget-object v0, v2, LC3/E;->H:LC3/F;

    .line 111
    .line 112
    invoke-virtual {v0}, LC3/F;->e()V

    .line 113
    .line 114
    .line 115
    iget-object v0, v2, LC3/E;->H:LC3/F;

    .line 116
    .line 117
    iget-object v1, v0, LC3/F;->a:LC3/E;

    .line 118
    .line 119
    const-string v2, "castDeviceControllerListenerKey"

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->registerListener(Ljava/lang/Object;Ljava/lang/String;)LK3/j;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v1, v1, LK3/j;->b:LK3/i;

    .line 126
    .line 127
    const-string v2, "Key must not be null"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/16 v2, 0x20df

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->doUnregisterEventListener(LK3/i;I)Lg4/h;

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    throw v0
.end method

.method private final b()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, LC3/D;->H:LC3/E;

    .line 3
    .line 4
    iget v2, p0, LC3/D;->I:I

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    iget-object v2, v1, LC3/E;->H:LC3/F;

    .line 10
    .line 11
    iput v0, v2, LC3/F;->v:I

    .line 12
    .line 13
    iput-boolean v3, v2, LC3/F;->c:Z

    .line 14
    .line 15
    iput-boolean v3, v2, LC3/F;->d:Z

    .line 16
    .line 17
    iget-object v4, v2, LC3/F;->u:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v0, v1, LC3/E;->H:LC3/F;

    .line 21
    .line 22
    iget-object v0, v0, LC3/F;->u:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, LD3/j;

    .line 39
    .line 40
    invoke-virtual {v1}, LD3/j;->a()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    monitor-exit v4

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object v4, v1, LC3/E;->H:LC3/F;

    .line 51
    .line 52
    iput v3, v4, LC3/F;->v:I

    .line 53
    .line 54
    iget-object v4, v4, LC3/F;->u:Ljava/util/List;

    .line 55
    .line 56
    monitor-enter v4

    .line 57
    :try_start_1
    iget-object v5, v1, LC3/E;->H:LC3/F;

    .line 58
    .line 59
    iget-object v5, v5, LC3/F;->u:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, LD3/j;

    .line 76
    .line 77
    iget-object v6, v6, LD3/j;->a:LD3/c;

    .line 78
    .line 79
    iget-object v6, v6, LD3/c;->e:LD3/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    if-nez v6, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    :try_start_2
    new-instance v7, LJ3/b;

    .line 85
    .line 86
    invoke-direct {v7, v2}, LJ3/b;-><init>(I)V

    .line 87
    .line 88
    .line 89
    check-cast v6, LD3/p;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 96
    .line 97
    .line 98
    const/4 v7, 0x3

    .line 99
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v6

    .line 104
    :try_start_3
    sget-object v7, LD3/c;->m:LH3/b;

    .line 105
    .line 106
    const-class v8, LD3/r;

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    new-array v9, v0, [Ljava/lang/Object;

    .line 113
    .line 114
    const-string v10, "onConnectionFailed"

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    aput-object v10, v9, v11

    .line 118
    .line 119
    aput-object v8, v9, v3

    .line 120
    .line 121
    const-string v8, "Unable to call %s on %s."

    .line 122
    .line 123
    invoke-virtual {v7, v6, v8, v9}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    iget-object v0, v1, LC3/E;->H:LC3/F;

    .line 131
    .line 132
    invoke-virtual {v0}, LC3/F;->e()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, LC3/D;->G:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, LC3/D;->H:LC3/E;

    .line 8
    .line 9
    iget-object v2, v1, LC3/E;->H:LC3/F;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    iput v3, v2, LC3/F;->v:I

    .line 13
    .line 14
    iget v3, p0, LC3/D;->I:I

    .line 15
    .line 16
    iget-object v2, v2, LC3/F;->u:Ljava/util/List;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v1, v1, LC3/E;->H:LC3/F;

    .line 20
    .line 21
    iget-object v1, v1, LC3/F;->u:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, LD3/j;

    .line 38
    .line 39
    iget-object v4, v4, LD3/j;->a:LD3/c;

    .line 40
    .line 41
    iget-object v4, v4, LD3/c;->e:LD3/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    check-cast v4, LD3/p;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    .line 60
    :try_start_2
    sget-object v5, LD3/c;->m:LH3/b;

    .line 61
    .line 62
    const-class v6, LD3/r;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-array v7, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v8, "onConnectionSuspended"

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    aput-object v8, v7, v9

    .line 74
    .line 75
    const/4 v8, 0x1

    .line 76
    aput-object v6, v7, v8

    .line 77
    .line 78
    const-string v6, "Unable to call %s on %s."

    .line 79
    .line 80
    invoke-virtual {v5, v4, v6, v7}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    monitor-exit v2

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw v0

    .line 90
    :pswitch_0
    iget-object v0, p0, LC3/D;->H:LC3/E;

    .line 91
    .line 92
    iget-object v0, v0, LC3/E;->H:LC3/F;

    .line 93
    .line 94
    iget-object v0, v0, LC3/F;->t:LD3/I;

    .line 95
    .line 96
    iget v1, p0, LC3/D;->I:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, LD3/I;->b(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_1
    invoke-direct {p0}, LC3/D;->b()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    invoke-direct {p0}, LC3/D;->a()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
