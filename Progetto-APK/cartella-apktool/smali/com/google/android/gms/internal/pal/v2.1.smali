.class public final Lcom/google/android/gms/internal/pal/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/b;
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/x2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/v2;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/v2;->c:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p2, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string p3, "GassClient"

    .line 11
    .line 12
    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/v2;->e:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance p3, Lcom/google/android/gms/internal/pal/x2;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p3, p1, p2, p0, p0}, Lcom/google/android/gms/internal/pal/x2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/v2;->a:Lcom/google/android/gms/internal/pal/x2;

    .line 30
    .line 31
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/v2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/pal/m0;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/m0;->M()Lcom/google/android/gms/internal/pal/L4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/32 v1, 0x8000

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pal/L4;->g(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/v2;->a:Lcom/google/android/gms/internal/pal/x2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->isConnecting()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->disconnect()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/pal/v2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/v2;->e:Landroid/os/HandlerThread;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/v2;->a:Lcom/google/android/gms/internal/pal/x2;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/google/android/gms/internal/pal/B2;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    nop

    .line 16
    move-object v2, v1

    .line 17
    :goto_0
    if-eqz v2, :cond_2

    .line 18
    .line 19
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/v2;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/v2;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget v6, Lcom/google/android/gms/internal/pal/a2;->a:I

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x4f45

    .line 34
    .line 35
    invoke-static {v7, v5}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x4

    .line 40
    invoke-static {v5, v6, v8}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    invoke-static {v5, v8, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    invoke-static {v5, v3, v4}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v7, v5}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/y5;->u3(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Lcom/google/android/gms/internal/pal/A2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroid/os/Parcelable;

    .line 76
    .line 77
    :goto_1
    check-cast v3, Lcom/google/android/gms/internal/pal/A2;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 80
    .line 81
    .line 82
    iget-object v2, v3, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    :try_start_2
    iget-object v2, v3, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 87
    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/pal/m0;->c0([BLcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/m0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, v3, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;

    .line 97
    .line 98
    iput-object v1, v3, Lcom/google/android/gms/internal/pal/A2;->I:[B
    :try_end_2
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_1
    move-exception v1

    .line 102
    goto :goto_2

    .line 103
    :catch_2
    move-exception v1

    .line 104
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :cond_1
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/A2;->i()V

    .line 111
    .line 112
    .line 113
    iget-object v1, v3, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    .line 118
    :catch_3
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/v2;->b()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/pal/v2;->a()Lcom/google/android/gms/internal/pal/m0;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/v2;->b()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_2
    return-void
.end method

.method public final onConnectionFailed(LJ3/b;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/pal/v2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/pal/v2;->a()Lcom/google/android/gms/internal/pal/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/pal/v2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/pal/v2;->a()Lcom/google/android/gms/internal/pal/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method
