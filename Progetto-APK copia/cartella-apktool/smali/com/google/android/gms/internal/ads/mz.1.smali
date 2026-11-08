.class public final synthetic Lcom/google/android/gms/internal/ads/mz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/pz;

.field public final synthetic I:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/pz;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/mz;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->H:Lcom/google/android/gms/internal/ads/pz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mz;->I:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/mz;->G:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mz;->H:Lcom/google/android/gms/internal/ads/pz;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mz;->I:Ljava/lang/Runnable;

    .line 11
    .line 12
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pz;->j:Landroid/os/IInterface;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/pz;->f:Z

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 21
    .line 22
    new-array v5, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v6, "Initiate binding to the service."

    .line 25
    .line 26
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/J;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    monitor-enter v4

    .line 32
    :try_start_0
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    new-instance v3, Lcom/google/android/gms/internal/ads/oz;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/oz;-><init>(Lcom/google/android/gms/internal/ads/pz;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/pz;->i:Lcom/google/android/gms/internal/ads/oz;

    .line 44
    .line 45
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/pz;->f:Z

    .line 46
    .line 47
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pz;->b:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pz;->g:Landroid/content/Intent;

    .line 50
    .line 51
    invoke-virtual {v4, v5, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 58
    .line 59
    new-array v3, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v4, "Failed to bind to the service."

    .line 62
    .line 63
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/J;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/pz;->f:Z

    .line 67
    .line 68
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 69
    .line 70
    monitor-enter v0

    .line 71
    :try_start_1
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw v1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    throw v0

    .line 84
    :cond_0
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/pz;->f:Z

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 89
    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    .line 92
    const-string v4, "Waiting to bind to the service."

    .line 93
    .line 94
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/ads/J;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 98
    .line 99
    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    monitor-exit v0

    .line 106
    goto :goto_0

    .line 107
    :catchall_2
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    throw v1

    .line 110
    :cond_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mz;->I:Ljava/lang/Runnable;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mz;->H:Lcom/google/android/gms/internal/ads/pz;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v2

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v2, v0, v1

    .line 129
    .line 130
    const-string v1, "error caused by "

    .line 131
    .line 132
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 133
    .line 134
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/J;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
