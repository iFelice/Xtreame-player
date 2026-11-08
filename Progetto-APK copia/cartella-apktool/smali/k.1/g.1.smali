.class public final Lk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Lk/g;->G:I

    .line 3
    iput-object p2, p0, Lk/g;->H:Ljava/lang/Object;

    iput-object p3, p0, Lk/g;->I:Ljava/lang/Object;

    iput-object p4, p0, Lk/g;->J:Ljava/lang/Object;

    iput-object p1, p0, Lk/g;->K:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lk/g;->G:I

    iput-object p1, p0, Lk/g;->K:Ljava/lang/Object;

    iput-object p2, p0, Lk/g;->H:Ljava/lang/Object;

    iput-object p3, p0, Lk/g;->I:Ljava/lang/Object;

    iput-object p4, p0, Lk/g;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lk/g;->G:I

    iput-object p1, p0, Lk/g;->H:Ljava/lang/Object;

    iput-object p2, p0, Lk/g;->I:Ljava/lang/Object;

    iput-object p3, p0, Lk/g;->J:Ljava/lang/Object;

    iput-object p4, p0, Lk/g;->K:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk/g;->J:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lk/g;->I:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lk/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "Updating proxies: (BatteryNotLowProxy ("

    .line 8
    .line 9
    :try_start_0
    move-object v4, v2

    .line 10
    check-cast v4, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v5, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    move-object v5, v2

    .line 20
    check-cast v5, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v7, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 23
    .line 24
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    move-object v7, v2

    .line 29
    check-cast v7, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v8, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 32
    .line 33
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    check-cast v2, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v8, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 40
    .line 41
    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, "), BatteryChargingProxy ("

    .line 54
    .line 55
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "), StorageNotLowProxy ("

    .line 62
    .line 63
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "), NetworkStateProxy ("

    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, "), "

    .line 78
    .line 79
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v8, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v6, v8, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move-object v3, v1

    .line 96
    check-cast v3, Landroid/content/Context;

    .line 97
    .line 98
    const-class v6, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    .line 99
    .line 100
    invoke-static {v3, v6, v4}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 101
    .line 102
    .line 103
    move-object v3, v1

    .line 104
    check-cast v3, Landroid/content/Context;

    .line 105
    .line 106
    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    .line 107
    .line 108
    invoke-static {v3, v4, v5}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 109
    .line 110
    .line 111
    move-object v3, v1

    .line 112
    check-cast v3, Landroid/content/Context;

    .line 113
    .line 114
    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    .line 115
    .line 116
    invoke-static {v3, v4, v7}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 117
    .line 118
    .line 119
    check-cast v1, Landroid/content/Context;

    .line 120
    .line 121
    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    .line 122
    .line 123
    invoke-static {v1, v3, v2}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 136
    .line 137
    .line 138
    throw v1
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/d1;

    .line 4
    .line 5
    iget-object v1, p0, Lk/g;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    iget-object v2, p0, Lk/g;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lc4/J1;

    .line 12
    .line 13
    iget-object v3, p0, Lk/g;->K:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Landroid/os/Bundle;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v4, v0, Lc4/d1;->J:Lc4/G;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lc4/l0;

    .line 25
    .line 26
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 27
    .line 28
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 32
    .line 33
    const-string v3, "Failed to request trigger URIs; not connected to service"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_2
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lc4/X0;

    .line 48
    .line 49
    invoke-direct {v5, v1}, Lc4/X0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v4, v2, v3, v5}, Lc4/G;->I2(Lc4/J1;Landroid/os/Bundle;Lc4/I;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lc4/d1;->D()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_0
    :try_start_3
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lc4/l0;

    .line 62
    .line 63
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 64
    .line 65
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 69
    .line 70
    const-string v3, "Failed to request trigger URIs; remote exception"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 76
    .line 77
    .line 78
    :goto_1
    monitor-exit v1

    .line 79
    :goto_2
    return-void

    .line 80
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    throw v0
.end method

.method private final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/d1;

    .line 4
    .line 5
    iget-object v1, p0, Lk/g;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    iget-object v2, p0, Lk/g;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lc4/J1;

    .line 12
    .line 13
    iget-object v3, p0, Lk/g;->K:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lc4/s1;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v4, v0, Lc4/d1;->J:Lc4/G;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lc4/l0;

    .line 25
    .line 26
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 27
    .line 28
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 32
    .line 33
    const-string v3, "[sgtm] Failed to get upload batches; not connected to service"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_2
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lc4/Y0;

    .line 48
    .line 49
    invoke-direct {v5, v0, v1}, Lc4/Y0;-><init>(Lc4/d1;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v4, v2, v3, v5}, Lc4/G;->T2(Lc4/J1;Lc4/s1;Lc4/K;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lc4/d1;->D()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_0
    :try_start_3
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lc4/l0;

    .line 62
    .line 63
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 64
    .line 65
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 69
    .line 70
    const-string v3, "[sgtm] Failed to get upload batches; remote exception"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 76
    .line 77
    .line 78
    :goto_1
    monitor-exit v1

    .line 79
    :goto_2
    return-void

    .line 80
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lk/g;->G:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ln2/t;

    .line 14
    .line 15
    iget-object v2, v0, Ln2/t;->J:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v3, "0 ms"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lk/g;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Ln2/t;->K:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v3, "0 Mbps"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Ln2/t;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lk/g;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    check-cast v2, LZ5/d0;

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, LZ5/b0;

    .line 71
    .line 72
    iget v0, v0, LZ5/b0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    :try_start_1
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, LZ5/c0;

    .line 79
    .line 80
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, LZ5/m;

    .line 83
    .line 84
    iget v0, v0, LZ5/m;->G:I

    .line 85
    .line 86
    packed-switch v0, :pswitch_data_1

    .line 87
    .line 88
    .line 89
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    packed-switch v0, :pswitch_data_2

    .line 92
    .line 93
    .line 94
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_1
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_2
    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_3
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 113
    .line 114
    packed-switch v0, :pswitch_data_3

    .line 115
    .line 116
    .line 117
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_4
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    .line 127
    .line 128
    :goto_0
    :try_start_2
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, LZ5/d0;

    .line 131
    .line 132
    iget-object v0, v0, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 133
    .line 134
    iget-object v3, v1, Lk/g;->I:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, LZ5/c0;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, LZ5/d0;

    .line 144
    .line 145
    iget-object v0, v0, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    .line 153
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, LZ5/d0;

    .line 156
    .line 157
    iget-object v0, v0, LZ5/d0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 160
    .line 161
    .line 162
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, LZ5/d0;

    .line 165
    .line 166
    iput-object v5, v0, LZ5/d0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception v0

    .line 172
    iget-object v3, v1, Lk/g;->K:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, LZ5/d0;

    .line 175
    .line 176
    iget-object v3, v3, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 177
    .line 178
    iget-object v4, v1, Lk/g;->I:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v4, LZ5/c0;

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    iget-object v3, v1, Lk/g;->K:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v3, LZ5/d0;

    .line 188
    .line 189
    iget-object v3, v3, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_0

    .line 196
    .line 197
    iget-object v3, v1, Lk/g;->K:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, LZ5/d0;

    .line 200
    .line 201
    iget-object v3, v3, LZ5/d0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 204
    .line 205
    .line 206
    iget-object v3, v1, Lk/g;->K:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v3, LZ5/d0;

    .line 209
    .line 210
    iput-object v5, v3, LZ5/d0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 211
    .line 212
    :cond_0
    throw v0

    .line 213
    :cond_1
    :goto_1
    monitor-exit v2

    .line 214
    return-void

    .line 215
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    throw v0

    .line 217
    :pswitch_5
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, LZ5/K;

    .line 220
    .line 221
    iput-boolean v3, v0, LZ5/K;->a:Z

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    throw v5

    .line 227
    :pswitch_6
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, LZ5/u;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    throw v5

    .line 235
    :pswitch_7
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, LZ5/a;

    .line 238
    .line 239
    iget-object v2, v1, Lk/g;->H:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v2, LY5/B;

    .line 242
    .line 243
    iget-object v3, v1, Lk/g;->I:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v3, LZ5/i;

    .line 246
    .line 247
    iget-object v4, v1, Lk/g;->J:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v4, LY5/u;

    .line 250
    .line 251
    invoke-virtual {v0, v2, v3, v4}, LZ5/a;->l(LY5/B;LZ5/i;LY5/u;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_8
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lc4/x1;

    .line 258
    .line 259
    iget-object v0, v0, Lc4/x1;->G:Lc4/A1;

    .line 260
    .line 261
    invoke-virtual {v0}, Lc4/A1;->f()Lc4/I1;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, LP3/b;

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    .line 276
    .line 277
    move-result-wide v6

    .line 278
    iget-object v3, v1, Lk/g;->H:Ljava/lang/Object;

    .line 279
    .line 280
    move-object v9, v3

    .line 281
    check-cast v9, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v3, v1, Lk/g;->I:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v3, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v4, v1, Lk/g;->J:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v4, Landroid/os/Bundle;

    .line 290
    .line 291
    const-string v5, "auto"

    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    invoke-virtual/range {v2 .. v8}, Lc4/I1;->r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v2, v9}, Lc4/A1;->o(Lc4/u;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_9
    iget-object v2, v1, Lk/g;->J:Ljava/lang/Object;

    .line 306
    .line 307
    iget-object v3, v1, Lk/g;->K:Ljava/lang/Object;

    .line 308
    .line 309
    :try_start_3
    move-object v0, v3

    .line 310
    check-cast v0, Lc4/d1;

    .line 311
    .line 312
    iget-object v4, v0, Lc4/d1;->J:Lc4/G;

    .line 313
    .line 314
    if-nez v4, :cond_2

    .line 315
    .line 316
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Lc4/l0;

    .line 319
    .line 320
    iget-object v4, v0, Lc4/l0;->O:Lc4/T;

    .line 321
    .line 322
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 323
    .line 324
    .line 325
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 326
    .line 327
    const-string v6, "Discarding data. Failed to send event to service to bundle"

    .line 328
    .line 329
    invoke-virtual {v4, v6}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 330
    .line 331
    .line 332
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 333
    .line 334
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 335
    .line 336
    .line 337
    check-cast v2, Lcom/google/android/gms/internal/measurement/M;

    .line 338
    .line 339
    invoke-virtual {v0, v2, v5}, Lc4/I1;->L(Lcom/google/android/gms/internal/measurement/M;[B)V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :catchall_2
    move-exception v0

    .line 344
    goto :goto_6

    .line 345
    :catch_0
    move-exception v0

    .line 346
    goto :goto_3

    .line 347
    :cond_2
    :try_start_4
    iget-object v6, v1, Lk/g;->H:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v6, Lc4/u;

    .line 350
    .line 351
    iget-object v7, v1, Lk/g;->I:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v7, Ljava/lang/String;

    .line 354
    .line 355
    invoke-interface {v4, v6, v7}, Lc4/G;->m0(Lc4/u;Ljava/lang/String;)[B

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v0}, Lc4/d1;->D()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :goto_3
    :try_start_5
    move-object v4, v3

    .line 364
    check-cast v4, Lc4/d1;

    .line 365
    .line 366
    iget-object v4, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v4, Lc4/l0;

    .line 369
    .line 370
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 371
    .line 372
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 373
    .line 374
    .line 375
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 376
    .line 377
    const-string v6, "Failed to send event to the service to bundle"

    .line 378
    .line 379
    invoke-virtual {v4, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 380
    .line 381
    .line 382
    :goto_4
    check-cast v3, Lc4/d1;

    .line 383
    .line 384
    check-cast v2, Lcom/google/android/gms/internal/measurement/M;

    .line 385
    .line 386
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Lc4/l0;

    .line 389
    .line 390
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 391
    .line 392
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2, v5}, Lc4/I1;->L(Lcom/google/android/gms/internal/measurement/M;[B)V

    .line 396
    .line 397
    .line 398
    :goto_5
    return-void

    .line 399
    :goto_6
    check-cast v3, Lc4/d1;

    .line 400
    .line 401
    check-cast v2, Lcom/google/android/gms/internal/measurement/M;

    .line 402
    .line 403
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v3, Lc4/l0;

    .line 406
    .line 407
    iget-object v3, v3, Lc4/l0;->R:Lc4/I1;

    .line 408
    .line 409
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v2, v5}, Lc4/I1;->L(Lcom/google/android/gms/internal/measurement/M;[B)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :pswitch_a
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 419
    .line 420
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 421
    .line 422
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iget-object v2, v1, Lk/g;->H:Ljava/lang/Object;

    .line 427
    .line 428
    move-object v10, v2

    .line 429
    check-cast v10, Lcom/google/android/gms/internal/measurement/M;

    .line 430
    .line 431
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 432
    .line 433
    move-object v7, v2

    .line 434
    check-cast v7, Ljava/lang/String;

    .line 435
    .line 436
    iget-object v2, v1, Lk/g;->J:Ljava/lang/Object;

    .line 437
    .line 438
    move-object v8, v2

    .line 439
    check-cast v8, Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v4}, Lc4/d1;->B(Z)Lc4/J1;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    new-instance v2, Ln2/t;

    .line 452
    .line 453
    const/4 v11, 0x5

    .line 454
    move-object v5, v2

    .line 455
    move-object v6, v0

    .line 456
    invoke-direct/range {v5 .. v11}, Ln2/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lk/g;->c()V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lk/g;->b()V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :pswitch_d
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 472
    .line 473
    move-object v8, v0

    .line 474
    check-cast v8, Ljava/lang/String;

    .line 475
    .line 476
    iget-object v0, v1, Lk/g;->J:Ljava/lang/Object;

    .line 477
    .line 478
    move-object v9, v0

    .line 479
    check-cast v9, Ljava/lang/String;

    .line 480
    .line 481
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v0, Lc4/K0;

    .line 484
    .line 485
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Lc4/l0;

    .line 488
    .line 489
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    iget-object v2, v1, Lk/g;->H:Ljava/lang/Object;

    .line 494
    .line 495
    move-object v7, v2

    .line 496
    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 497
    .line 498
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v4}, Lc4/d1;->B(Z)Lc4/J1;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    new-instance v2, Ln2/t;

    .line 509
    .line 510
    move-object v5, v2

    .line 511
    move-object v6, v0

    .line 512
    invoke-direct/range {v5 .. v10}, Ln2/t;-><init>(Lc4/d1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc4/J1;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :pswitch_e
    iget-object v0, v1, Lk/g;->K:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 522
    .line 523
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 524
    .line 525
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    iget-object v2, v1, Lk/g;->H:Ljava/lang/Object;

    .line 530
    .line 531
    move-object v9, v2

    .line 532
    check-cast v9, Lcom/google/android/gms/internal/measurement/M;

    .line 533
    .line 534
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 535
    .line 536
    move-object v7, v2

    .line 537
    check-cast v7, Lc4/u;

    .line 538
    .line 539
    iget-object v2, v1, Lk/g;->J:Ljava/lang/Object;

    .line 540
    .line 541
    move-object v8, v2

    .line 542
    check-cast v8, Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 548
    .line 549
    .line 550
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v2, Lc4/l0;

    .line 553
    .line 554
    iget-object v3, v2, Lc4/l0;->R:Lc4/I1;

    .line 555
    .line 556
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 557
    .line 558
    .line 559
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v3, Lc4/l0;

    .line 562
    .line 563
    sget-object v5, LJ3/f;->b:LJ3/f;

    .line 564
    .line 565
    iget-object v3, v3, Lc4/l0;->G:Landroid/content/Context;

    .line 566
    .line 567
    const v6, 0xbdfcb8

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5, v3, v6}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-eqz v3, :cond_3

    .line 575
    .line 576
    iget-object v0, v2, Lc4/l0;->O:Lc4/T;

    .line 577
    .line 578
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 579
    .line 580
    .line 581
    const-string v3, "Not bundling data. Service unavailable or out of date"

    .line 582
    .line 583
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 584
    .line 585
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v0, v2, Lc4/l0;->R:Lc4/I1;

    .line 589
    .line 590
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 591
    .line 592
    .line 593
    new-array v2, v4, [B

    .line 594
    .line 595
    invoke-virtual {v0, v9, v2}, Lc4/I1;->L(Lcom/google/android/gms/internal/measurement/M;[B)V

    .line 596
    .line 597
    .line 598
    goto :goto_7

    .line 599
    :cond_3
    new-instance v2, Lk/g;

    .line 600
    .line 601
    const/16 v10, 0x10

    .line 602
    .line 603
    move-object v5, v2

    .line 604
    move-object v6, v0

    .line 605
    invoke-direct/range {v5 .. v10}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 609
    .line 610
    .line 611
    :goto_7
    return-void

    .line 612
    :pswitch_f
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v0, Lc4/r0;

    .line 615
    .line 616
    iget-object v6, v1, Lk/g;->I:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v6, Landroid/os/Bundle;

    .line 619
    .line 620
    iget-object v7, v1, Lk/g;->J:Ljava/lang/Object;

    .line 621
    .line 622
    move-object v14, v7

    .line 623
    check-cast v14, Ljava/lang/String;

    .line 624
    .line 625
    iget-object v7, v1, Lk/g;->K:Ljava/lang/Object;

    .line 626
    .line 627
    move-object v15, v7

    .line 628
    check-cast v15, Lc4/J1;

    .line 629
    .line 630
    iget-object v7, v0, Lc4/r0;->G:Lc4/A1;

    .line 631
    .line 632
    invoke-virtual {v7}, Lc4/A1;->c0()Lc4/h;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    sget-object v9, Lc4/E;->d1:Lc4/D;

    .line 637
    .line 638
    invoke-virtual {v8, v5, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 639
    .line 640
    .line 641
    move-result v8

    .line 642
    invoke-virtual {v7}, Lc4/A1;->c0()Lc4/h;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    sget-object v10, Lc4/E;->f1:Lc4/D;

    .line 647
    .line 648
    invoke-virtual {v9, v5, v10}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 649
    .line 650
    .line 651
    move-result v17

    .line 652
    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 653
    .line 654
    .line 655
    move-result v9

    .line 656
    iget-object v12, v0, Lc4/r0;->G:Lc4/A1;

    .line 657
    .line 658
    if-eqz v9, :cond_4

    .line 659
    .line 660
    if-eqz v8, :cond_4

    .line 661
    .line 662
    iget-object v2, v12, Lc4/A1;->I:Lc4/o;

    .line 663
    .line 664
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Lc1/d;->m()V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2}, Lc4/u1;->n()V

    .line 671
    .line 672
    .line 673
    :try_start_6
    invoke-virtual {v2}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const-string v3, "delete from default_event_params where app_id=?"

    .line 678
    .line 679
    filled-new-array {v14}, [Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 684
    .line 685
    .line 686
    goto/16 :goto_9

    .line 687
    .line 688
    :catch_1
    move-exception v0

    .line 689
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v2, Lc4/l0;

    .line 692
    .line 693
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 694
    .line 695
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 696
    .line 697
    .line 698
    const-string v3, "Error clearing default event params"

    .line 699
    .line 700
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 701
    .line 702
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_9

    .line 706
    .line 707
    :cond_4
    iget-object v13, v7, Lc4/A1;->I:Lc4/o;

    .line 708
    .line 709
    invoke-static {v13}, Lc4/A1;->I(Lc4/u1;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v13}, Lc1/d;->m()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v13}, Lc4/u1;->n()V

    .line 716
    .line 717
    .line 718
    iget-object v0, v13, Lc1/d;->G:Ljava/lang/Object;

    .line 719
    .line 720
    move-object v8, v0

    .line 721
    check-cast v8, Lc4/l0;

    .line 722
    .line 723
    new-instance v0, LE0/n;

    .line 724
    .line 725
    const-string v9, ""

    .line 726
    .line 727
    const-string v11, "dep"

    .line 728
    .line 729
    const-wide/16 v18, 0x0

    .line 730
    .line 731
    const-wide/16 v20, 0x0

    .line 732
    .line 733
    move-object v7, v0

    .line 734
    move-object v10, v14

    .line 735
    move-object v3, v12

    .line 736
    move-object v4, v13

    .line 737
    move-wide/from16 v12, v18

    .line 738
    .line 739
    move-object v2, v14

    .line 740
    move-object/from16 v23, v15

    .line 741
    .line 742
    move-wide/from16 v14, v20

    .line 743
    .line 744
    move-object/from16 v16, v6

    .line 745
    .line 746
    invoke-direct/range {v7 .. v16}, LE0/n;-><init>(Lc4/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 747
    .line 748
    .line 749
    iget-object v7, v4, Lc4/q1;->H:Lc4/A1;

    .line 750
    .line 751
    iget-object v7, v7, Lc4/A1;->M:Lc4/E1;

    .line 752
    .line 753
    invoke-static {v7}, Lc4/A1;->I(Lc4/u1;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v7, v0}, Lc4/E1;->N(LE0/n;)Lcom/google/android/gms/internal/measurement/b1;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    iget-object v7, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v7, Lc4/l0;

    .line 767
    .line 768
    iget-object v8, v7, Lc4/l0;->O:Lc4/T;

    .line 769
    .line 770
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 771
    .line 772
    .line 773
    array-length v9, v0

    .line 774
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 775
    .line 776
    .line 777
    move-result-object v9

    .line 778
    const-string v10, "Saving default event parameters, appId, data size"

    .line 779
    .line 780
    iget-object v8, v8, Lc4/T;->T:Lc4/Q;

    .line 781
    .line 782
    invoke-virtual {v8, v2, v9, v10}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    new-instance v8, Landroid/content/ContentValues;

    .line 786
    .line 787
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .line 789
    .line 790
    const-string v9, "app_id"

    .line 791
    .line 792
    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const-string v9, "parameters"

    .line 796
    .line 797
    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 798
    .line 799
    .line 800
    :try_start_7
    invoke-virtual {v4}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    const-string v9, "default_event_params"

    .line 805
    .line 806
    const/4 v10, 0x5

    .line 807
    invoke-virtual {v0, v9, v5, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 808
    .line 809
    .line 810
    move-result-wide v8

    .line 811
    const-wide/16 v10, -0x1

    .line 812
    .line 813
    cmp-long v0, v8, v10

    .line 814
    .line 815
    if-nez v0, :cond_5

    .line 816
    .line 817
    iget-object v0, v7, Lc4/l0;->O:Lc4/T;

    .line 818
    .line 819
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 820
    .line 821
    .line 822
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 823
    .line 824
    const-string v7, "Failed to insert default event parameters (got -1). appId"

    .line 825
    .line 826
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    invoke-virtual {v0, v8, v7}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 831
    .line 832
    .line 833
    goto :goto_8

    .line 834
    :catch_2
    move-exception v0

    .line 835
    iget-object v4, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v4, Lc4/l0;

    .line 838
    .line 839
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 840
    .line 841
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 842
    .line 843
    .line 844
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 845
    .line 846
    .line 847
    move-result-object v7

    .line 848
    const-string v8, "Error storing default event parameters. appId"

    .line 849
    .line 850
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 851
    .line 852
    invoke-virtual {v4, v7, v0, v8}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    :cond_5
    :goto_8
    iget-object v4, v3, Lc4/A1;->I:Lc4/o;

    .line 856
    .line 857
    invoke-static {v4}, Lc4/A1;->I(Lc4/u1;)V

    .line 858
    .line 859
    .line 860
    move-object/from16 v7, v23

    .line 861
    .line 862
    iget-wide v7, v7, Lc4/J1;->l0:J

    .line 863
    .line 864
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast v0, Lc4/l0;

    .line 867
    .line 868
    iget-object v9, v0, Lc4/l0;->M:Lc4/h;

    .line 869
    .line 870
    sget-object v10, Lc4/E;->f1:Lc4/D;

    .line 871
    .line 872
    invoke-virtual {v9, v5, v10}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 873
    .line 874
    .line 875
    move-result v9

    .line 876
    if-nez v9, :cond_6

    .line 877
    .line 878
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 884
    .line 885
    .line 886
    move-result-wide v9

    .line 887
    const-wide/16 v11, 0x3a98

    .line 888
    .line 889
    add-long/2addr v11, v7

    .line 890
    cmp-long v0, v9, v11

    .line 891
    .line 892
    if-gtz v0, :cond_9

    .line 893
    .line 894
    :cond_6
    :try_start_8
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    .line 895
    .line 896
    const/4 v9, 0x2

    .line 897
    new-array v10, v9, [Ljava/lang/String;

    .line 898
    .line 899
    const/4 v9, 0x0

    .line 900
    aput-object v2, v10, v9

    .line 901
    .line 902
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v9

    .line 906
    const/4 v11, 0x1

    .line 907
    aput-object v9, v10, v11

    .line 908
    .line 909
    const-wide/16 v11, 0x0

    .line 910
    .line 911
    invoke-virtual {v4, v0, v10, v11, v12}, Lc4/o;->f0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 912
    .line 913
    .line 914
    move-result-wide v9

    .line 915
    cmp-long v0, v9, v11

    .line 916
    .line 917
    if-lez v0, :cond_7

    .line 918
    .line 919
    goto :goto_9

    .line 920
    :cond_7
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    .line 921
    .line 922
    const/4 v9, 0x2

    .line 923
    new-array v9, v9, [Ljava/lang/String;

    .line 924
    .line 925
    const/4 v10, 0x0

    .line 926
    aput-object v2, v9, v10

    .line 927
    .line 928
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    const/4 v13, 0x1

    .line 933
    aput-object v10, v9, v13

    .line 934
    .line 935
    invoke-virtual {v4, v0, v9, v11, v12}, Lc4/o;->f0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 936
    .line 937
    .line 938
    move-result-wide v9
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 939
    cmp-long v0, v9, v11

    .line 940
    .line 941
    if-lez v0, :cond_9

    .line 942
    .line 943
    if-eqz v17, :cond_8

    .line 944
    .line 945
    iget-object v0, v3, Lc4/A1;->I:Lc4/o;

    .line 946
    .line 947
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 948
    .line 949
    .line 950
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    invoke-virtual {v0, v2, v3, v5, v6}, Lc4/o;->x(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 955
    .line 956
    .line 957
    goto :goto_9

    .line 958
    :cond_8
    iget-object v0, v3, Lc4/A1;->I:Lc4/o;

    .line 959
    .line 960
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v2, v5, v5, v6}, Lc4/o;->x(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 964
    .line 965
    .line 966
    goto :goto_9

    .line 967
    :catch_3
    move-exception v0

    .line 968
    iget-object v2, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 969
    .line 970
    check-cast v2, Lc4/l0;

    .line 971
    .line 972
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 973
    .line 974
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 975
    .line 976
    .line 977
    const-string v3, "Error checking backfill conditions"

    .line 978
    .line 979
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 980
    .line 981
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    :cond_9
    :goto_9
    return-void

    .line 985
    :pswitch_10
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 986
    .line 987
    check-cast v0, Lc4/r0;

    .line 988
    .line 989
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 990
    .line 991
    check-cast v2, Ljava/lang/String;

    .line 992
    .line 993
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v3, Lc4/s1;

    .line 996
    .line 997
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v4, Lc4/K;

    .line 1000
    .line 1001
    iget-object v6, v0, Lc4/r0;->G:Lc4/A1;

    .line 1002
    .line 1003
    invoke-virtual {v6}, Lc4/A1;->i()V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v6}, Lc4/A1;->c0()Lc4/h;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    sget-object v7, Lc4/E;->Q0:Lc4/D;

    .line 1011
    .line 1012
    invoke-virtual {v0, v5, v7}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    if-nez v0, :cond_a

    .line 1017
    .line 1018
    new-instance v0, Lc4/t1;

    .line 1019
    .line 1020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    invoke-direct {v0, v3}, Lc4/t1;-><init>(Ljava/util/List;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_10

    .line 1028
    .line 1029
    :cond_a
    invoke-static {v6}, Lcom/google/protobuf/U2;->t(Lc4/A1;)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v6, Lc4/A1;->I:Lc4/o;

    .line 1033
    .line 1034
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 1035
    .line 1036
    .line 1037
    sget-object v7, Lc4/E;->B:Lc4/D;

    .line 1038
    .line 1039
    invoke-virtual {v7, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v7

    .line 1043
    check-cast v7, Ljava/lang/Integer;

    .line 1044
    .line 1045
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    invoke-virtual {v0, v2, v3, v7}, Lc4/o;->t(Ljava/lang/String;Lc4/s1;I)Ljava/util/List;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    new-instance v3, Ljava/util/ArrayList;

    .line 1054
    .line 1055
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v7

    .line 1066
    if-eqz v7, :cond_12

    .line 1067
    .line 1068
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v7

    .line 1072
    check-cast v7, Lc4/C1;

    .line 1073
    .line 1074
    iget-object v8, v7, Lc4/C1;->c:Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-virtual {v6, v2, v8}, Lc4/A1;->Y(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v8

    .line 1080
    iget-wide v9, v7, Lc4/C1;->a:J

    .line 1081
    .line 1082
    if-nez v8, :cond_b

    .line 1083
    .line 1084
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v8

    .line 1088
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v9

    .line 1092
    iget-object v8, v8, Lc4/T;->T:Lc4/Q;

    .line 1093
    .line 1094
    iget-object v7, v7, Lc4/C1;->c:Ljava/lang/String;

    .line 1095
    .line 1096
    const-string v10, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url"

    .line 1097
    .line 1098
    invoke-virtual {v8, v2, v9, v7, v10}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_a

    .line 1102
    :cond_b
    iget v8, v7, Lc4/C1;->h:I

    .line 1103
    .line 1104
    if-gtz v8, :cond_c

    .line 1105
    .line 1106
    move-object v11, v0

    .line 1107
    goto :goto_b

    .line 1108
    :cond_c
    sget-object v11, Lc4/E;->z:Lc4/D;

    .line 1109
    .line 1110
    invoke-virtual {v11, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v11

    .line 1114
    check-cast v11, Ljava/lang/Integer;

    .line 1115
    .line 1116
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 1117
    .line 1118
    .line 1119
    move-result v11

    .line 1120
    iget-wide v12, v7, Lc4/C1;->g:J

    .line 1121
    .line 1122
    if-le v8, v11, :cond_d

    .line 1123
    .line 1124
    move-object v11, v0

    .line 1125
    goto/16 :goto_f

    .line 1126
    .line 1127
    :cond_d
    sget-object v11, Lc4/E;->x:Lc4/D;

    .line 1128
    .line 1129
    invoke-virtual {v11, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v11

    .line 1133
    check-cast v11, Ljava/lang/Long;

    .line 1134
    .line 1135
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 1136
    .line 1137
    .line 1138
    move-result-wide v14

    .line 1139
    add-int/lit8 v8, v8, -0x1

    .line 1140
    .line 1141
    const-wide/16 v16, 0x1

    .line 1142
    .line 1143
    shl-long v16, v16, v8

    .line 1144
    .line 1145
    mul-long v14, v14, v16

    .line 1146
    .line 1147
    sget-object v8, Lc4/E;->y:Lc4/D;

    .line 1148
    .line 1149
    invoke-virtual {v8, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v8

    .line 1153
    check-cast v8, Ljava/lang/Long;

    .line 1154
    .line 1155
    move-object v11, v0

    .line 1156
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v0

    .line 1160
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1161
    .line 1162
    .line 1163
    move-result-wide v0

    .line 1164
    invoke-virtual {v6}, Lc4/A1;->c()LP3/a;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v8

    .line 1168
    check-cast v8, LP3/b;

    .line 1169
    .line 1170
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1174
    .line 1175
    .line 1176
    move-result-wide v14

    .line 1177
    add-long/2addr v0, v12

    .line 1178
    cmp-long v8, v14, v0

    .line 1179
    .line 1180
    if-ltz v8, :cond_11

    .line 1181
    .line 1182
    :goto_b
    new-instance v0, Landroid/os/Bundle;

    .line 1183
    .line 1184
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1185
    .line 1186
    .line 1187
    iget-object v1, v7, Lc4/C1;->d:Ljava/util/Map;

    .line 1188
    .line 1189
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v1

    .line 1193
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v8

    .line 1201
    if-eqz v8, :cond_e

    .line 1202
    .line 1203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v8

    .line 1207
    check-cast v8, Ljava/util/Map$Entry;

    .line 1208
    .line 1209
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v9

    .line 1213
    check-cast v9, Ljava/lang/String;

    .line 1214
    .line 1215
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v8

    .line 1219
    check-cast v8, Ljava/lang/String;

    .line 1220
    .line 1221
    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    goto :goto_c

    .line 1225
    :cond_e
    new-instance v1, Lc4/r1;

    .line 1226
    .line 1227
    iget-object v8, v7, Lc4/C1;->b:Lcom/google/android/gms/internal/measurement/j1;

    .line 1228
    .line 1229
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 1230
    .line 1231
    .line 1232
    move-result-object v26

    .line 1233
    iget-object v8, v7, Lc4/C1;->e:Lc4/R0;

    .line 1234
    .line 1235
    iget v8, v8, Lc4/R0;->G:I

    .line 1236
    .line 1237
    iget-wide v9, v7, Lc4/C1;->a:J

    .line 1238
    .line 1239
    const-string v32, ""

    .line 1240
    .line 1241
    iget-object v12, v7, Lc4/C1;->c:Ljava/lang/String;

    .line 1242
    .line 1243
    iget-wide v13, v7, Lc4/C1;->f:J

    .line 1244
    .line 1245
    move-object/from16 v23, v1

    .line 1246
    .line 1247
    move-wide/from16 v24, v9

    .line 1248
    .line 1249
    move-object/from16 v27, v12

    .line 1250
    .line 1251
    move-object/from16 v28, v0

    .line 1252
    .line 1253
    move/from16 v29, v8

    .line 1254
    .line 1255
    move-wide/from16 v30, v13

    .line 1256
    .line 1257
    invoke-direct/range {v23 .. v32}, Lc4/r1;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/j1;->r()Lcom/google/android/gms/internal/measurement/h1;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    iget-object v7, v1, Lc4/r1;->H:[B

    .line 1265
    .line 1266
    invoke-static {v0, v7}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    check-cast v0, Lcom/google/android/gms/internal/measurement/h1;

    .line 1271
    .line 1272
    const/4 v7, 0x0

    .line 1273
    :goto_d
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 1274
    .line 1275
    check-cast v8, Lcom/google/android/gms/internal/measurement/j1;

    .line 1276
    .line 1277
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j1;->q()I

    .line 1278
    .line 1279
    .line 1280
    move-result v8

    .line 1281
    if-ge v7, v8, :cond_f

    .line 1282
    .line 1283
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 1284
    .line 1285
    check-cast v8, Lcom/google/android/gms/internal/measurement/j1;

    .line 1286
    .line 1287
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/j1;->t(I)Lcom/google/android/gms/internal/measurement/l1;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v8

    .line 1291
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/s2;->g()Lcom/google/android/gms/internal/measurement/r2;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v8

    .line 1295
    check-cast v8, Lcom/google/android/gms/internal/measurement/k1;

    .line 1296
    .line 1297
    invoke-virtual {v6}, Lc4/A1;->c()LP3/a;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v9

    .line 1301
    check-cast v9, LP3/b;

    .line 1302
    .line 1303
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    .line 1305
    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1307
    .line 1308
    .line 1309
    move-result-wide v9

    .line 1310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 1311
    .line 1312
    .line 1313
    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 1314
    .line 1315
    check-cast v12, Lcom/google/android/gms/internal/measurement/l1;

    .line 1316
    .line 1317
    invoke-static {v12, v9, v10}, Lcom/google/android/gms/internal/measurement/l1;->E1(Lcom/google/android/gms/internal/measurement/l1;J)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 1321
    .line 1322
    .line 1323
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 1324
    .line 1325
    check-cast v9, Lcom/google/android/gms/internal/measurement/j1;

    .line 1326
    .line 1327
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v8

    .line 1331
    check-cast v8, Lcom/google/android/gms/internal/measurement/l1;

    .line 1332
    .line 1333
    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/j1;->A(Lcom/google/android/gms/internal/measurement/j1;ILcom/google/android/gms/internal/measurement/l1;)V

    .line 1334
    .line 1335
    .line 1336
    const/4 v8, 0x1

    .line 1337
    add-int/2addr v7, v8

    .line 1338
    goto :goto_d

    .line 1339
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v7

    .line 1343
    check-cast v7, Lcom/google/android/gms/internal/measurement/j1;

    .line 1344
    .line 1345
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 1346
    .line 1347
    .line 1348
    move-result-object v7

    .line 1349
    iput-object v7, v1, Lc4/r1;->H:[B

    .line 1350
    .line 1351
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v7

    .line 1355
    invoke-virtual {v7}, Lc4/T;->x()Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v7

    .line 1359
    const/4 v8, 0x2

    .line 1360
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v7

    .line 1364
    if-eqz v7, :cond_10

    .line 1365
    .line 1366
    iget-object v7, v6, Lc4/A1;->M:Lc4/E1;

    .line 1367
    .line 1368
    invoke-static {v7}, Lc4/A1;->I(Lc4/u1;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    check-cast v0, Lcom/google/android/gms/internal/measurement/j1;

    .line 1376
    .line 1377
    invoke-virtual {v7, v0}, Lc4/E1;->P(Lcom/google/android/gms/internal/measurement/j1;)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    iput-object v0, v1, Lc4/r1;->M:Ljava/lang/String;
    :try_end_9
    .catch Lcom/google/android/gms/internal/measurement/B2; {:try_start_9 .. :try_end_9} :catch_4

    .line 1382
    .line 1383
    :cond_10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    :goto_e
    move-object/from16 v1, p0

    .line 1387
    .line 1388
    move-object v0, v11

    .line 1389
    goto/16 :goto_a

    .line 1390
    .line 1391
    :catch_4
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    const-string v1, "Failed to parse queued batch. appId"

    .line 1396
    .line 1397
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 1398
    .line 1399
    invoke-virtual {v0, v2, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    goto :goto_e

    .line 1403
    :cond_11
    :goto_f
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v7

    .line 1415
    const-string v8, "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis"

    .line 1416
    .line 1417
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 1418
    .line 1419
    invoke-virtual {v0, v2, v1, v7, v8}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    goto :goto_e

    .line 1423
    :cond_12
    new-instance v0, Lc4/t1;

    .line 1424
    .line 1425
    invoke-direct {v0, v3}, Lc4/t1;-><init>(Ljava/util/List;)V

    .line 1426
    .line 1427
    .line 1428
    :goto_10
    :try_start_a
    invoke-interface {v4, v0}, Lc4/K;->B1(Lc4/t1;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v1

    .line 1435
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 1436
    .line 1437
    const-string v3, "[sgtm] Sending queued upload batches to client. appId, count"

    .line 1438
    .line 1439
    iget-object v0, v0, Lc4/t1;->G:Ljava/util/List;

    .line 1440
    .line 1441
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1442
    .line 1443
    .line 1444
    move-result v0

    .line 1445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    invoke-virtual {v1, v2, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    .line 1450
    .line 1451
    .line 1452
    goto :goto_11

    .line 1453
    :catch_5
    move-exception v0

    .line 1454
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    const-string v3, "[sgtm] Failed to return upload batches for app"

    .line 1459
    .line 1460
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 1461
    .line 1462
    invoke-virtual {v1, v2, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    :goto_11
    return-void

    .line 1466
    :pswitch_11
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 1467
    .line 1468
    check-cast v0, Lcom/google/android/gms/internal/cast/p;

    .line 1469
    .line 1470
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 1471
    .line 1472
    check-cast v2, LE1/F;

    .line 1473
    .line 1474
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 1475
    .line 1476
    check-cast v3, LE1/F;

    .line 1477
    .line 1478
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 1479
    .line 1480
    check-cast v4, Lt/i;

    .line 1481
    .line 1482
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/p;->a:Lcom/google/android/gms/internal/cast/t;

    .line 1483
    .line 1484
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1485
    .line 1486
    .line 1487
    new-instance v6, Ljava/util/HashSet;

    .line 1488
    .line 1489
    iget-object v7, v0, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 1490
    .line 1491
    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 1495
    .line 1496
    .line 1497
    move-result v6

    .line 1498
    sget-object v8, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 1499
    .line 1500
    if-eqz v6, :cond_13

    .line 1501
    .line 1502
    const/4 v6, 0x0

    .line 1503
    new-array v0, v6, [Ljava/lang/Object;

    .line 1504
    .line 1505
    const-string v2, "No need to prepare transfer without any callback"

    .line 1506
    .line 1507
    invoke-virtual {v8, v2, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v4, v5}, Lt/i;->a(Ljava/lang/Object;)V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_19

    .line 1514
    .line 1515
    :cond_13
    const/4 v6, 0x0

    .line 1516
    iget v2, v2, LE1/F;->k:I

    .line 1517
    .line 1518
    const/4 v9, 0x1

    .line 1519
    if-eq v2, v9, :cond_14

    .line 1520
    .line 1521
    new-array v0, v6, [Ljava/lang/Object;

    .line 1522
    .line 1523
    const-string v2, "No need to prepare transfer when transferring from local"

    .line 1524
    .line 1525
    invoke-virtual {v8, v2, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v4, v5}, Lt/i;->a(Ljava/lang/Object;)V

    .line 1529
    .line 1530
    .line 1531
    goto/16 :goto_19

    .line 1532
    .line 1533
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/t;->a()LE3/j;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v2

    .line 1537
    if-eqz v2, :cond_15

    .line 1538
    .line 1539
    invoke-virtual {v2}, LE3/j;->g()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v9

    .line 1543
    if-nez v9, :cond_16

    .line 1544
    .line 1545
    :cond_15
    const/4 v2, 0x0

    .line 1546
    goto/16 :goto_18

    .line 1547
    .line 1548
    :cond_16
    new-array v9, v6, [Ljava/lang/Object;

    .line 1549
    .line 1550
    const-string v6, "Prepare route transfer for changing endpoint"

    .line 1551
    .line 1552
    invoke-virtual {v8, v6, v9}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1553
    .line 1554
    .line 1555
    iget v6, v3, LE1/F;->k:I

    .line 1556
    .line 1557
    if-nez v6, :cond_17

    .line 1558
    .line 1559
    sget-object v3, Lcom/google/android/gms/internal/cast/d0;->w0:Lcom/google/android/gms/internal/cast/d0;

    .line 1560
    .line 1561
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/D0;->a(Lcom/google/android/gms/internal/cast/d0;)V

    .line 1562
    .line 1563
    .line 1564
    const/4 v3, 0x1

    .line 1565
    goto :goto_12

    .line 1566
    :cond_17
    iget-object v3, v3, LE1/F;->r:Landroid/os/Bundle;

    .line 1567
    .line 1568
    invoke-static {v3}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v3

    .line 1572
    if-nez v3, :cond_18

    .line 1573
    .line 1574
    const/4 v3, 0x3

    .line 1575
    goto :goto_12

    .line 1576
    :cond_18
    const/4 v3, 0x2

    .line 1577
    :goto_12
    iput v3, v0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 1578
    .line 1579
    iput-object v4, v0, Lcom/google/android/gms/internal/cast/t;->g:Lt/i;

    .line 1580
    .line 1581
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v3

    .line 1585
    const/4 v4, 0x1

    .line 1586
    new-array v6, v4, [Ljava/lang/Object;

    .line 1587
    .line 1588
    const/4 v4, 0x0

    .line 1589
    aput-object v3, v6, v4

    .line 1590
    .line 1591
    const-string v3, "notify transferring with type = %d"

    .line 1592
    .line 1593
    invoke-virtual {v8, v3, v6}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1594
    .line 1595
    .line 1596
    new-instance v3, Ljava/util/HashSet;

    .line 1597
    .line 1598
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v3

    .line 1605
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1606
    .line 1607
    .line 1608
    move-result v4

    .line 1609
    if-eqz v4, :cond_1a

    .line 1610
    .line 1611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v4

    .line 1615
    check-cast v4, LD3/i;

    .line 1616
    .line 1617
    iget v6, v0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 1618
    .line 1619
    check-cast v4, Lcom/google/android/gms/internal/cast/Y;

    .line 1620
    .line 1621
    iget v7, v4, Lcom/google/android/gms/internal/cast/Y;->a:I

    .line 1622
    .line 1623
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/Y;->b:Ljava/lang/Object;

    .line 1624
    .line 1625
    packed-switch v7, :pswitch_data_4

    .line 1626
    .line 1627
    .line 1628
    new-instance v7, LF/d;

    .line 1629
    .line 1630
    const/16 v8, 0xa

    .line 1631
    .line 1632
    const/4 v9, 0x0

    .line 1633
    invoke-direct {v7, v8, v9}, LF/d;-><init>(II)V

    .line 1634
    .line 1635
    .line 1636
    check-cast v4, Lo/j;

    .line 1637
    .line 1638
    iget-object v8, v4, Lo/j;->H:Ljava/lang/Object;

    .line 1639
    .line 1640
    check-cast v8, Lcom/google/android/gms/internal/cast/c;

    .line 1641
    .line 1642
    iget v8, v8, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 1643
    .line 1644
    const/4 v9, 0x2

    .line 1645
    if-ne v8, v9, :cond_19

    .line 1646
    .line 1647
    const/4 v8, 0x1

    .line 1648
    goto :goto_14

    .line 1649
    :cond_19
    const/4 v8, 0x0

    .line 1650
    :goto_14
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v8

    .line 1654
    iput-object v8, v7, LF/d;->J:Ljava/lang/Object;

    .line 1655
    .line 1656
    new-instance v8, Lcom/google/android/gms/internal/cast/a3;

    .line 1657
    .line 1658
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 1659
    .line 1660
    .line 1661
    invoke-static {v4, v8}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v4}, Lo/j;->d()Lcom/google/android/gms/internal/cast/Z2;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v4

    .line 1668
    new-instance v7, Landroidx/leanback/widget/j;

    .line 1669
    .line 1670
    const/16 v8, 0xd

    .line 1671
    .line 1672
    invoke-direct {v7, v6, v8}, Landroidx/leanback/widget/j;-><init>(II)V

    .line 1673
    .line 1674
    .line 1675
    new-instance v6, Lcom/google/android/gms/internal/cast/a;

    .line 1676
    .line 1677
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroidx/leanback/widget/j;)V

    .line 1678
    .line 1679
    .line 1680
    iget-wide v7, v4, Lcom/google/android/gms/internal/cast/Z2;->h:J

    .line 1681
    .line 1682
    iput-wide v7, v6, Lcom/google/android/gms/internal/cast/a;->c:J

    .line 1683
    .line 1684
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/Z2;->c:Ljava/util/List;

    .line 1685
    .line 1686
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    .line 1688
    .line 1689
    goto :goto_13

    .line 1690
    :pswitch_12
    sget-object v7, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 1691
    .line 1692
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v8

    .line 1696
    const/4 v9, 0x1

    .line 1697
    new-array v10, v9, [Ljava/lang/Object;

    .line 1698
    .line 1699
    const/4 v11, 0x0

    .line 1700
    aput-object v8, v10, v11

    .line 1701
    .line 1702
    const-string v8, "onTransferring with type = %d"

    .line 1703
    .line 1704
    invoke-virtual {v7, v8, v10}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    .line 1706
    .line 1707
    check-cast v4, Lcom/google/android/gms/internal/cast/a0;

    .line 1708
    .line 1709
    iput-boolean v9, v4, Lcom/google/android/gms/internal/cast/a0;->i:Z

    .line 1710
    .line 1711
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 1712
    .line 1713
    .line 1714
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 1715
    .line 1716
    iget-object v8, v4, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 1717
    .line 1718
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v7

    .line 1722
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v8

    .line 1726
    invoke-static {v8}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v8

    .line 1730
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 1731
    .line 1732
    .line 1733
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 1734
    .line 1735
    check-cast v9, Lcom/google/android/gms/internal/cast/n0;

    .line 1736
    .line 1737
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/cast/n0;->v(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v6

    .line 1744
    check-cast v6, Lcom/google/android/gms/internal/cast/n0;

    .line 1745
    .line 1746
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/cast/r0;->f(Lcom/google/android/gms/internal/cast/n0;)V

    .line 1747
    .line 1748
    .line 1749
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v6

    .line 1753
    check-cast v6, Lcom/google/android/gms/internal/cast/s0;

    .line 1754
    .line 1755
    const/16 v7, 0xe6

    .line 1756
    .line 1757
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 1758
    .line 1759
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_13

    .line 1763
    .line 1764
    :cond_1a
    iput-object v5, v0, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 1765
    .line 1766
    const-string v3, "Must be called from the main thread."

    .line 1767
    .line 1768
    invoke-static {v3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v2}, LE3/j;->t()Z

    .line 1772
    .line 1773
    .line 1774
    move-result v3

    .line 1775
    if-nez v3, :cond_1b

    .line 1776
    .line 1777
    new-instance v2, LH3/l;

    .line 1778
    .line 1779
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 1780
    .line 1781
    .line 1782
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->j(Ljava/lang/Exception;)Lg4/r;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    goto/16 :goto_17

    .line 1787
    .line 1788
    :cond_1b
    new-instance v3, Lg4/i;

    .line 1789
    .line 1790
    invoke-direct {v3}, Lg4/i;-><init>()V

    .line 1791
    .line 1792
    .line 1793
    iput-object v3, v2, LE3/j;->g:Lg4/i;

    .line 1794
    .line 1795
    const/4 v3, 0x0

    .line 1796
    new-array v3, v3, [Ljava/lang/Object;

    .line 1797
    .line 1798
    sget-object v4, LE3/j;->k:LH3/b;

    .line 1799
    .line 1800
    const-string v6, "create SessionState with cached mediaInfo and mediaStatus"

    .line 1801
    .line 1802
    invoke-virtual {v4, v6, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v2}, LE3/j;->c()Lcom/google/android/gms/cast/MediaInfo;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v8

    .line 1809
    invoke-virtual {v2}, LE3/j;->d()LC3/r;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v3

    .line 1813
    if-eqz v8, :cond_1e

    .line 1814
    .line 1815
    if-nez v3, :cond_1c

    .line 1816
    .line 1817
    goto :goto_15

    .line 1818
    :cond_1c
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1819
    .line 1820
    invoke-virtual {v2}, LE3/j;->a()J

    .line 1821
    .line 1822
    .line 1823
    move-result-wide v11

    .line 1824
    iget-object v9, v3, LC3/r;->b0:LC3/n;

    .line 1825
    .line 1826
    iget-wide v13, v3, LC3/r;->J:D

    .line 1827
    .line 1828
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 1829
    .line 1830
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Double;->compare(DD)I

    .line 1831
    .line 1832
    .line 1833
    move-result v4

    .line 1834
    if-gtz v4, :cond_1d

    .line 1835
    .line 1836
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1837
    .line 1838
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Double;->compare(DD)I

    .line 1839
    .line 1840
    .line 1841
    move-result v4

    .line 1842
    if-ltz v4, :cond_1d

    .line 1843
    .line 1844
    iget-object v15, v3, LC3/r;->Q:[J

    .line 1845
    .line 1846
    iget-object v3, v3, LC3/r;->U:Lorg/json/JSONObject;

    .line 1847
    .line 1848
    new-instance v4, LC3/k;

    .line 1849
    .line 1850
    const/16 v18, 0x0

    .line 1851
    .line 1852
    const/16 v19, 0x0

    .line 1853
    .line 1854
    const/16 v17, 0x0

    .line 1855
    .line 1856
    const/16 v20, 0x0

    .line 1857
    .line 1858
    const-wide/16 v21, 0x0

    .line 1859
    .line 1860
    move-object v7, v4

    .line 1861
    move-object/from16 v16, v3

    .line 1862
    .line 1863
    invoke-direct/range {v7 .. v22}, LC3/k;-><init>(Lcom/google/android/gms/cast/MediaInfo;LC3/n;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1864
    .line 1865
    .line 1866
    new-instance v3, LC3/s;

    .line 1867
    .line 1868
    invoke-direct {v3, v4, v5}, LC3/s;-><init>(LC3/k;Lorg/json/JSONObject;)V

    .line 1869
    .line 1870
    .line 1871
    move-object v5, v3

    .line 1872
    goto :goto_15

    .line 1873
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1874
    .line 1875
    const-string v2, "playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX"

    .line 1876
    .line 1877
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    throw v0

    .line 1881
    :cond_1e
    :goto_15
    if-eqz v5, :cond_1f

    .line 1882
    .line 1883
    iget-object v3, v2, LE3/j;->g:Lg4/i;

    .line 1884
    .line 1885
    invoke-virtual {v3, v5}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 1886
    .line 1887
    .line 1888
    goto :goto_16

    .line 1889
    :cond_1f
    iget-object v3, v2, LE3/j;->g:Lg4/i;

    .line 1890
    .line 1891
    new-instance v4, LH3/l;

    .line 1892
    .line 1893
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v3, v4}, Lg4/i;->a(Ljava/lang/Exception;)V

    .line 1897
    .line 1898
    .line 1899
    :goto_16
    iget-object v2, v2, LE3/j;->g:Lg4/i;

    .line 1900
    .line 1901
    iget-object v2, v2, Lg4/i;->a:Lg4/r;

    .line 1902
    .line 1903
    :goto_17
    new-instance v3, Lcom/google/android/gms/internal/cast/r;

    .line 1904
    .line 1905
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/cast/r;-><init>(Lcom/google/android/gms/internal/cast/t;)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1909
    .line 1910
    .line 1911
    sget-object v4, Lg4/j;->a:Lg4/q;

    .line 1912
    .line 1913
    invoke-virtual {v2, v4, v3}, Lg4/r;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    .line 1914
    .line 1915
    .line 1916
    new-instance v3, Lcom/google/android/gms/internal/cast/r;

    .line 1917
    .line 1918
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/cast/r;-><init>(Lcom/google/android/gms/internal/cast/t;)V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v2, v4, v3}, Lg4/r;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;

    .line 1922
    .line 1923
    .line 1924
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/t;->c:LX3/d;

    .line 1925
    .line 1926
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 1927
    .line 1928
    .line 1929
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/t;->d:Lcom/google/android/gms/internal/cast/s;

    .line 1930
    .line 1931
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 1932
    .line 1933
    .line 1934
    const-wide/16 v3, 0x2710

    .line 1935
    .line 1936
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1937
    .line 1938
    .line 1939
    goto :goto_19

    .line 1940
    :goto_18
    new-array v0, v2, [Ljava/lang/Object;

    .line 1941
    .line 1942
    const-string v2, "No need to prepare transfer when there is no media session"

    .line 1943
    .line 1944
    invoke-virtual {v8, v2, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual {v4, v5}, Lt/i;->a(Ljava/lang/Object;)V

    .line 1948
    .line 1949
    .line 1950
    :goto_19
    return-void

    .line 1951
    :pswitch_13
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 1952
    .line 1953
    move-object v2, v0

    .line 1954
    check-cast v2, Landroid/content/Context;

    .line 1955
    .line 1956
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 1957
    .line 1958
    check-cast v0, Ljava/lang/String;

    .line 1959
    .line 1960
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 1961
    .line 1962
    check-cast v3, Lf3/f;

    .line 1963
    .line 1964
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 1965
    .line 1966
    check-cast v4, Lcom/google/android/gms/internal/ads/to;

    .line 1967
    .line 1968
    :try_start_b
    new-instance v5, Lcom/google/android/gms/internal/ads/Ed;

    .line 1969
    .line 1970
    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/internal/ads/Ed;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1971
    .line 1972
    .line 1973
    iget-object v0, v3, Lf3/f;->a:Ll3/G0;

    .line 1974
    .line 1975
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/Ed;->b(Ll3/G0;Lcom/google/android/gms/internal/ads/to;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6

    .line 1976
    .line 1977
    .line 1978
    goto :goto_1a

    .line 1979
    :catch_6
    move-exception v0

    .line 1980
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v2

    .line 1984
    const-string v3, "RewardedInterstitialAd.load"

    .line 1985
    .line 1986
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1987
    .line 1988
    .line 1989
    :goto_1a
    return-void

    .line 1990
    :pswitch_14
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 1991
    .line 1992
    move-object v2, v0

    .line 1993
    check-cast v2, Landroid/content/Context;

    .line 1994
    .line 1995
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 1996
    .line 1997
    check-cast v0, Ljava/lang/String;

    .line 1998
    .line 1999
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2000
    .line 2001
    check-cast v3, Lf3/f;

    .line 2002
    .line 2003
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 2004
    .line 2005
    check-cast v4, Lcom/google/android/gms/internal/ads/to;

    .line 2006
    .line 2007
    :try_start_c
    new-instance v5, Lcom/google/android/gms/internal/ads/zd;

    .line 2008
    .line 2009
    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/internal/ads/zd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2010
    .line 2011
    .line 2012
    iget-object v0, v3, Lf3/f;->a:Ll3/G0;

    .line 2013
    .line 2014
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zd;->b(Ll3/G0;Lcom/google/android/gms/internal/ads/to;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    .line 2015
    .line 2016
    .line 2017
    goto :goto_1b

    .line 2018
    :catch_7
    move-exception v0

    .line 2019
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v2

    .line 2023
    const-string v3, "RewardedAd.load"

    .line 2024
    .line 2025
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2026
    .line 2027
    .line 2028
    :goto_1b
    return-void

    .line 2029
    :pswitch_15
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 2030
    .line 2031
    check-cast v0, Lv3/C;

    .line 2032
    .line 2033
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 2034
    .line 2035
    check-cast v2, Lcom/google/android/gms/internal/ads/Cn;

    .line 2036
    .line 2037
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2038
    .line 2039
    check-cast v3, Ljava/util/ArrayDeque;

    .line 2040
    .line 2041
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 2042
    .line 2043
    check-cast v4, Ljava/util/ArrayDeque;

    .line 2044
    .line 2045
    const-string v5, "to"

    .line 2046
    .line 2047
    invoke-virtual {v0, v2, v3, v5}, Lv3/C;->f(Lcom/google/android/gms/internal/ads/Cn;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 2048
    .line 2049
    .line 2050
    const-string v3, "of"

    .line 2051
    .line 2052
    invoke-virtual {v0, v2, v4, v3}, Lv3/C;->f(Lcom/google/android/gms/internal/ads/Cn;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    return-void

    .line 2056
    :pswitch_16
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 2057
    .line 2058
    move-object v2, v0

    .line 2059
    check-cast v2, Landroid/content/Context;

    .line 2060
    .line 2061
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 2062
    .line 2063
    check-cast v0, Ljava/lang/String;

    .line 2064
    .line 2065
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2066
    .line 2067
    check-cast v3, Lf3/f;

    .line 2068
    .line 2069
    iget-object v4, v1, Lk/g;->K:Ljava/lang/Object;

    .line 2070
    .line 2071
    check-cast v4, Lq3/b;

    .line 2072
    .line 2073
    :try_start_d
    new-instance v5, Lcom/google/android/gms/internal/ads/ra;

    .line 2074
    .line 2075
    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/internal/ads/ra;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2076
    .line 2077
    .line 2078
    iget-object v0, v3, Lf3/f;->a:Ll3/G0;

    .line 2079
    .line 2080
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/ra;->c(Ll3/G0;Lcom/google/android/gms/internal/measurement/p2;)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_8

    .line 2081
    .line 2082
    .line 2083
    goto :goto_1c

    .line 2084
    :catch_8
    move-exception v0

    .line 2085
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v2

    .line 2089
    const-string v3, "InterstitialAd.load"

    .line 2090
    .line 2091
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2092
    .line 2093
    .line 2094
    :goto_1c
    return-void

    .line 2095
    :pswitch_17
    iget-object v2, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2096
    .line 2097
    const-string v0, "Ignoring setProgressAsync(...). WorkSpec ("

    .line 2098
    .line 2099
    iget-object v3, v1, Lk/g;->H:Ljava/lang/Object;

    .line 2100
    .line 2101
    check-cast v3, Ljava/util/UUID;

    .line 2102
    .line 2103
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v4

    .line 2107
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v6

    .line 2111
    sget-object v7, Ln2/v;->c:Ljava/lang/String;

    .line 2112
    .line 2113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2114
    .line 2115
    const-string v9, "Updating progress for "

    .line 2116
    .line 2117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2121
    .line 2122
    .line 2123
    const-string v3, " ("

    .line 2124
    .line 2125
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    .line 2127
    .line 2128
    iget-object v3, v1, Lk/g;->I:Ljava/lang/Object;

    .line 2129
    .line 2130
    move-object v9, v3

    .line 2131
    check-cast v9, Ld2/e;

    .line 2132
    .line 2133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    .line 2136
    const-string v9, ")"

    .line 2137
    .line 2138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    .line 2140
    .line 2141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v8

    .line 2145
    invoke-virtual {v6, v7, v8}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    .line 2147
    .line 2148
    iget-object v6, v1, Lk/g;->K:Ljava/lang/Object;

    .line 2149
    .line 2150
    move-object v8, v6

    .line 2151
    check-cast v8, Ln2/v;

    .line 2152
    .line 2153
    iget-object v9, v8, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2154
    .line 2155
    invoke-virtual {v9}, LP1/x;->c()V

    .line 2156
    .line 2157
    .line 2158
    :try_start_e
    move-object v9, v6

    .line 2159
    check-cast v9, Ln2/v;

    .line 2160
    .line 2161
    iget-object v9, v9, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2162
    .line 2163
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v9

    .line 2167
    invoke-virtual {v9, v4}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v9

    .line 2171
    if-eqz v9, :cond_21

    .line 2172
    .line 2173
    iget v9, v9, Lm2/q;->b:I

    .line 2174
    .line 2175
    const/4 v10, 0x2

    .line 2176
    if-ne v9, v10, :cond_20

    .line 2177
    .line 2178
    new-instance v0, Lm2/m;

    .line 2179
    .line 2180
    check-cast v3, Ld2/e;

    .line 2181
    .line 2182
    invoke-direct {v0, v4, v3}, Lm2/m;-><init>(Ljava/lang/String;Ld2/e;)V

    .line 2183
    .line 2184
    .line 2185
    move-object v3, v6

    .line 2186
    check-cast v3, Ln2/v;

    .line 2187
    .line 2188
    iget-object v3, v3, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2189
    .line 2190
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->t()Lm2/o;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v3

    .line 2194
    invoke-virtual {v3, v0}, Lm2/o;->p(Lm2/m;)V

    .line 2195
    .line 2196
    .line 2197
    goto :goto_1d

    .line 2198
    :catchall_3
    move-exception v0

    .line 2199
    goto :goto_1f

    .line 2200
    :cond_20
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v3

    .line 2204
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    const-string v0, ") is not in a RUNNING state."

    .line 2213
    .line 2214
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v0

    .line 2221
    invoke-virtual {v3, v7, v0}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    .line 2223
    .line 2224
    :goto_1d
    move-object v0, v2

    .line 2225
    check-cast v0, Lo2/j;

    .line 2226
    .line 2227
    invoke-virtual {v0, v5}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 2228
    .line 2229
    .line 2230
    check-cast v6, Ln2/v;

    .line 2231
    .line 2232
    iget-object v0, v6, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2233
    .line 2234
    invoke-virtual {v0}, LP1/x;->n()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2235
    .line 2236
    .line 2237
    :goto_1e
    iget-object v0, v8, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2238
    .line 2239
    invoke-virtual {v0}, LP1/x;->j()V

    .line 2240
    .line 2241
    .line 2242
    goto :goto_20

    .line 2243
    :cond_21
    :try_start_f
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 2244
    .line 2245
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2246
    .line 2247
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2248
    .line 2249
    .line 2250
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 2251
    :goto_1f
    :try_start_10
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v3

    .line 2255
    sget-object v4, Ln2/v;->c:Ljava/lang/String;

    .line 2256
    .line 2257
    const-string v5, "Error updating Worker progress"

    .line 2258
    .line 2259
    invoke-virtual {v3, v4, v5, v0}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2260
    .line 2261
    .line 2262
    check-cast v2, Lo2/j;

    .line 2263
    .line 2264
    invoke-virtual {v2, v0}, Lo2/j;->k(Ljava/lang/Throwable;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2265
    .line 2266
    .line 2267
    goto :goto_1e

    .line 2268
    :goto_20
    return-void

    .line 2269
    :catchall_4
    move-exception v0

    .line 2270
    iget-object v2, v8, Ln2/v;->a:Landroidx/work/impl/WorkDatabase;

    .line 2271
    .line 2272
    invoke-virtual {v2}, LP1/x;->j()V

    .line 2273
    .line 2274
    .line 2275
    throw v0

    .line 2276
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lk/g;->a()V

    .line 2277
    .line 2278
    .line 2279
    return-void

    .line 2280
    :pswitch_19
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 2281
    .line 2282
    check-cast v0, LY/Z;

    .line 2283
    .line 2284
    iget-object v2, v1, Lk/g;->I:Ljava/lang/Object;

    .line 2285
    .line 2286
    check-cast v2, Landroid/view/View;

    .line 2287
    .line 2288
    iget-object v3, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2289
    .line 2290
    check-cast v3, Landroid/graphics/Rect;

    .line 2291
    .line 2292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2293
    .line 2294
    .line 2295
    invoke-static {v3, v2}, LY/Z;->g(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2296
    .line 2297
    .line 2298
    return-void

    .line 2299
    :pswitch_1a
    iget-object v0, v1, Lk/g;->H:Ljava/lang/Object;

    .line 2300
    .line 2301
    check-cast v0, Lk/h;

    .line 2302
    .line 2303
    if-eqz v0, :cond_22

    .line 2304
    .line 2305
    iget-object v2, v1, Lk/g;->K:Ljava/lang/Object;

    .line 2306
    .line 2307
    check-cast v2, Lf/S;

    .line 2308
    .line 2309
    iget-object v3, v2, Lf/S;->H:Ljava/lang/Object;

    .line 2310
    .line 2311
    check-cast v3, Lk/i;

    .line 2312
    .line 2313
    const/4 v4, 0x1

    .line 2314
    iput-boolean v4, v3, Lk/i;->g0:Z

    .line 2315
    .line 2316
    iget-object v0, v0, Lk/h;->b:Lk/o;

    .line 2317
    .line 2318
    const/4 v3, 0x0

    .line 2319
    invoke-virtual {v0, v3}, Lk/o;->c(Z)V

    .line 2320
    .line 2321
    .line 2322
    iget-object v0, v2, Lf/S;->H:Ljava/lang/Object;

    .line 2323
    .line 2324
    check-cast v0, Lk/i;

    .line 2325
    .line 2326
    iput-boolean v3, v0, Lk/i;->g0:Z

    .line 2327
    .line 2328
    :cond_22
    iget-object v0, v1, Lk/g;->I:Ljava/lang/Object;

    .line 2329
    .line 2330
    check-cast v0, Landroid/view/MenuItem;

    .line 2331
    .line 2332
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 2333
    .line 2334
    .line 2335
    move-result v2

    .line 2336
    if-eqz v2, :cond_23

    .line 2337
    .line 2338
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 2339
    .line 2340
    .line 2341
    move-result v2

    .line 2342
    if-eqz v2, :cond_23

    .line 2343
    .line 2344
    iget-object v2, v1, Lk/g;->J:Ljava/lang/Object;

    .line 2345
    .line 2346
    check-cast v2, Lk/o;

    .line 2347
    .line 2348
    const/4 v3, 0x4

    .line 2349
    invoke-virtual {v2, v0, v5, v3}, Lk/o;->q(Landroid/view/MenuItem;Lk/A;I)Z

    .line 2350
    .line 2351
    .line 2352
    :cond_23
    return-void

    .line 2353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_0
    .end packed-switch

    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_4
    .end packed-switch

    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
