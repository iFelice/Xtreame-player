.class public final Lc4/r0;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"

# interfaces
.implements Lc4/G;


# instance fields
.field public final G:Lc4/A1;

.field public H:Ljava/lang/Boolean;

.field public I:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc4/A1;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/x;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc4/r0;->G:Lc4/A1;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lc4/r0;->I:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final A2(Lc4/J1;Lc4/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Lc4/E;->Q0:Lc4/D;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, LZ3/v;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v0, p0, p1, p2, v1}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final F1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v8, Lc4/p0;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    move-object v2, v8

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move-object v6, p3

    .line 19
    invoke-direct/range {v2 .. v7}, Lc4/p0;-><init>(Lc4/r0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v8}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/util/List;

    .line 31
    .line 32
    new-instance p3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lc4/G1;

    .line 56
    .line 57
    if-nez p4, :cond_1

    .line 58
    .line 59
    iget-object v2, v1, Lc4/G1;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p2

    .line 69
    goto :goto_2

    .line 70
    :catch_1
    move-exception p2

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    new-instance v2, Lc4/F1;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Lc4/F1;-><init>(Lc4/G1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-object p3

    .line 82
    :goto_2
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p4, "Failed to get user properties as. appId"

    .line 91
    .line 92
    iget-object p3, p3, Lc4/T;->L:Lc4/Q;

    .line 93
    .line 94
    invoke-virtual {p3, p1, p2, p4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method public final I2(Lc4/J1;Landroid/os/Bundle;Lc4/I;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object v5, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v5}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    new-instance v9, Ln2/t;

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v0, v9

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-direct/range {v0 .. v7}, Ln2/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v9}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final M0(Lc4/J1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc4/m0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final R2(Lc4/J1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc4/m0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final T2(Lc4/J1;Lc4/s1;Lc4/K;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lc4/E;->Q0:Lc4/D;

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance p1, Lc4/t1;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Lc4/t1;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, p1}, Lc4/K;->B1(Lc4/t1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 33
    .line 34
    const-string p2, "[sgtm] Client upload is not enabled on the service side."

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string p3, "[sgtm] UploadBatchesCallback failed."

    .line 46
    .line 47
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 48
    .line 49
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v7, Lk/g;

    .line 66
    .line 67
    const/16 v5, 0x9

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v0, v7

    .line 71
    move-object v1, p0

    .line 72
    move-object v3, p2

    .line 73
    move-object v4, p3

    .line 74
    invoke-direct/range {v0 .. v6}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final W0(Lc4/J1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lc4/J1;->a0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lc4/m0;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lc4/r0;->j0(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final X0(Lc4/u;Lc4/J1;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lc4/r0;->r1(Lc4/J1;)V

    .line 5
    .line 6
    .line 7
    new-instance v6, LZ3/v;

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v6}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto/16 :goto_a

    .line 11
    .line 12
    :pswitch_1
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lc4/J1;

    .line 19
    .line 20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback"

    .line 36
    .line 37
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    instance-of v6, v5, Lc4/I;

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    move-object v2, v5

    .line 46
    check-cast v2, Lc4/I;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v5, Lc4/H;

    .line 50
    .line 51
    invoke-direct {v5, v3, v2, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    move-object v2, v5

    .line 55
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0, v2}, Lc4/r0;->I2(Lc4/J1;Landroid/os/Bundle;Lc4/I;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :pswitch_2
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    .line 68
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lc4/J1;

    .line 73
    .line 74
    sget-object v0, Lc4/e;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    .line 76
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lc4/e;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lc4/r0;->A2(Lc4/J1;Lc4/e;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :pswitch_3
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lc4/J1;

    .line 100
    .line 101
    sget-object v0, Lc4/s1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    .line 103
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lc4/s1;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-nez v3, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const-string v2, "com.google.android.gms.measurement.internal.IUploadBatchesCallback"

    .line 117
    .line 118
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    instance-of v6, v5, Lc4/K;

    .line 123
    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    move-object v2, v5

    .line 127
    check-cast v2, Lc4/K;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance v5, Lc4/J;

    .line 131
    .line 132
    invoke-direct {v5, v3, v2, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    move-object v2, v5

    .line 136
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, v0, v2}, Lc4/r0;->T2(Lc4/J1;Lc4/s1;Lc4/K;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_9

    .line 146
    .line 147
    :pswitch_4
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    .line 149
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lc4/J1;

    .line 154
    .line 155
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lc4/r0;->t0(Lc4/J1;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_9

    .line 165
    .line 166
    :pswitch_5
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lc4/J1;

    .line 173
    .line 174
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lc4/r0;->t2(Lc4/J1;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :pswitch_6
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 186
    .line 187
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lc4/J1;

    .line 192
    .line 193
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lc4/r0;->a0(Lc4/J1;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :pswitch_7
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    .line 206
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lc4/J1;

    .line 211
    .line 212
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 213
    .line 214
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 224
    .line 225
    .line 226
    iget-object p2, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    sget-object v6, Lc4/E;->i1:Lc4/D;

    .line 236
    .line 237
    invoke-virtual {v5, v2, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    const-string v5, "Failed to get trigger URIs. appId"

    .line 242
    .line 243
    if-eqz v2, :cond_4

    .line 244
    .line 245
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-instance v6, Lc4/q0;

    .line 250
    .line 251
    invoke-direct {v6, p0, p1, v1, v3}, Lc4/q0;-><init>(Lc4/r0;Lc4/J1;Landroid/os/Bundle;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v6}, Lc4/j0;->t(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 259
    .line 260
    const-wide/16 v2, 0x2710

    .line 261
    .line 262
    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catch_0
    move-exception p1

    .line 270
    goto :goto_2

    .line 271
    :catch_1
    move-exception p1

    .line 272
    goto :goto_2

    .line 273
    :catch_2
    move-exception p1

    .line 274
    :goto_2
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 283
    .line 284
    invoke-virtual {v0, p2, p1, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    goto :goto_4

    .line 292
    :cond_4
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    new-instance v3, Lc4/q0;

    .line 297
    .line 298
    invoke-direct {v3, p0, p1, v1, v4}, Lc4/q0;-><init>(Lc4/r0;Lc4/J1;Landroid/os/Bundle;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :catch_3
    move-exception p1

    .line 313
    goto :goto_3

    .line 314
    :catch_4
    move-exception p1

    .line 315
    :goto_3
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 324
    .line 325
    invoke-virtual {v0, p2, p1, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_9

    .line 339
    .line 340
    :pswitch_8
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 341
    .line 342
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    check-cast p1, Lc4/J1;

    .line 347
    .line 348
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Lc4/r0;->Y0(Lc4/J1;)Lc4/j;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    .line 357
    .line 358
    if-nez p1, :cond_5

    .line 359
    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p3, v4}, Lc4/j;->writeToParcel(Landroid/os/Parcel;I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_9

    .line 372
    .line 373
    :pswitch_9
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 374
    .line 375
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Lc4/J1;

    .line 380
    .line 381
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, p1}, Lc4/r0;->W0(Lc4/J1;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_9

    .line 391
    .line 392
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 393
    .line 394
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Landroid/os/Bundle;

    .line 399
    .line 400
    sget-object v0, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 401
    .line 402
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lc4/J1;

    .line 407
    .line 408
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, p1, v0}, Lc4/r0;->b1(Landroid/os/Bundle;Lc4/J1;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_9

    .line 418
    .line 419
    :pswitch_b
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 420
    .line 421
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    check-cast p1, Lc4/J1;

    .line 426
    .line 427
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, p1}, Lc4/r0;->r3(Lc4/J1;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_9

    .line 437
    .line 438
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p1, v0, v1}, Lc4/r0;->Z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_9

    .line 464
    .line 465
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    sget-object v1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 474
    .line 475
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Lc4/J1;

    .line 480
    .line 481
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, p1, v0, v1}, Lc4/r0;->d0(Ljava/lang/String;Ljava/lang/String;Lc4/J1;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_9

    .line 495
    .line 496
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    sget-object v2, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 509
    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-eqz v2, :cond_6

    .line 515
    .line 516
    const/4 v3, 0x1

    .line 517
    :cond_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p0, p1, v0, v1, v3}, Lc4/r0;->F1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_9

    .line 531
    .line 532
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    sget-object v1, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 541
    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_7

    .line 547
    .line 548
    const/4 v3, 0x1

    .line 549
    :cond_7
    sget-object v1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 550
    .line 551
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lc4/J1;

    .line 556
    .line 557
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0, p1, v0, v3, v1}, Lc4/r0;->k0(Ljava/lang/String;Ljava/lang/String;ZLc4/J1;)Ljava/util/List;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_9

    .line 571
    .line 572
    :pswitch_10
    sget-object p1, Lc4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 573
    .line 574
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    check-cast p1, Lc4/f;

    .line 579
    .line 580
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 581
    .line 582
    .line 583
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    iget-object p2, p1, Lc4/f;->I:Lc4/F1;

    .line 587
    .line 588
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    iget-object p2, p1, Lc4/f;->G:Ljava/lang/String;

    .line 592
    .line 593
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object p2, p1, Lc4/f;->G:Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {p0, p2, v4}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 599
    .line 600
    .line 601
    new-instance p2, Lc4/f;

    .line 602
    .line 603
    invoke-direct {p2, p1}, Lc4/f;-><init>(Lc4/f;)V

    .line 604
    .line 605
    .line 606
    new-instance p1, LK3/V;

    .line 607
    .line 608
    const/4 v0, 0x7

    .line 609
    invoke-direct {p1, v0, p0, p2}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0, p1}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_9

    .line 619
    .line 620
    :pswitch_11
    sget-object p1, Lc4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 621
    .line 622
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    check-cast p1, Lc4/f;

    .line 627
    .line 628
    sget-object v0, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 629
    .line 630
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    check-cast v0, Lc4/J1;

    .line 635
    .line 636
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0, p1, v0}, Lc4/r0;->o2(Lc4/f;Lc4/J1;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_9

    .line 646
    .line 647
    :pswitch_12
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 648
    .line 649
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Lc4/J1;

    .line 654
    .line 655
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p0, p1}, Lc4/r0;->w1(Lc4/J1;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_9

    .line 669
    .line 670
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 671
    .line 672
    .line 673
    move-result-wide v6

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v8

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v9

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v10

    .line 686
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 687
    .line 688
    .line 689
    move-object v5, p0

    .line 690
    invoke-virtual/range {v5 .. v10}, Lc4/r0;->v3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_9

    .line 697
    .line 698
    :pswitch_14
    sget-object p1, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 699
    .line 700
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    check-cast p1, Lc4/u;

    .line 705
    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p0, p1, v0}, Lc4/r0;->m0(Lc4/u;Ljava/lang/String;)[B

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_9

    .line 724
    .line 725
    :pswitch_15
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    check-cast p1, Lc4/J1;

    .line 732
    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_8

    .line 738
    .line 739
    const/4 v3, 0x1

    .line 740
    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 744
    .line 745
    .line 746
    iget-object p1, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 747
    .line 748
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 752
    .line 753
    .line 754
    move-result-object p2

    .line 755
    new-instance v1, Lo3/F;

    .line 756
    .line 757
    const/4 v5, 0x3

    .line 758
    invoke-direct {v1, p0, p1, v5}, Lo3/F;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p2, v1}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 762
    .line 763
    .line 764
    move-result-object p2

    .line 765
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object p2

    .line 769
    check-cast p2, Ljava/util/List;

    .line 770
    .line 771
    new-instance v1, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    .line 779
    .line 780
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 781
    .line 782
    .line 783
    move-result-object p2

    .line 784
    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    if-eqz v5, :cond_b

    .line 789
    .line 790
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    check-cast v5, Lc4/G1;

    .line 795
    .line 796
    if-nez v3, :cond_a

    .line 797
    .line 798
    iget-object v6, v5, Lc4/G1;->c:Ljava/lang/String;

    .line 799
    .line 800
    invoke-static {v6}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v6

    .line 804
    if-nez v6, :cond_9

    .line 805
    .line 806
    goto :goto_6

    .line 807
    :catch_5
    move-exception p2

    .line 808
    goto :goto_7

    .line 809
    :catch_6
    move-exception p2

    .line 810
    goto :goto_7

    .line 811
    :cond_a
    :goto_6
    new-instance v6, Lc4/F1;

    .line 812
    .line 813
    invoke-direct {v6, v5}, Lc4/F1;-><init>(Lc4/G1;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5

    .line 817
    .line 818
    .line 819
    goto :goto_5

    .line 820
    :cond_b
    move-object v2, v1

    .line 821
    goto :goto_8

    .line 822
    :goto_7
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    const-string v1, "Failed to get user properties. appId"

    .line 831
    .line 832
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 833
    .line 834
    invoke-virtual {v0, p1, p2, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_9

    .line 844
    .line 845
    :pswitch_16
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 846
    .line 847
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 848
    .line 849
    .line 850
    move-result-object p1

    .line 851
    check-cast p1, Lc4/J1;

    .line 852
    .line 853
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {p0, p1}, Lc4/r0;->R2(Lc4/J1;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    .line 861
    .line 862
    goto :goto_9

    .line 863
    :pswitch_17
    sget-object p1, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 864
    .line 865
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    check-cast p1, Lc4/u;

    .line 870
    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 879
    .line 880
    .line 881
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {p0, v0, v4}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 888
    .line 889
    .line 890
    new-instance p2, LZ3/v;

    .line 891
    .line 892
    invoke-direct {p2, p0, p1, v0}, LZ3/v;-><init>(Lc4/r0;Lc4/u;Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {p0, p2}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    .line 900
    .line 901
    goto :goto_9

    .line 902
    :pswitch_18
    sget-object p1, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 903
    .line 904
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    check-cast p1, Lc4/J1;

    .line 909
    .line 910
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {p0, p1}, Lc4/r0;->M0(Lc4/J1;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    .line 918
    .line 919
    goto :goto_9

    .line 920
    :pswitch_19
    sget-object p1, Lc4/F1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 921
    .line 922
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    check-cast p1, Lc4/F1;

    .line 927
    .line 928
    sget-object v0, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 929
    .line 930
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    check-cast v0, Lc4/J1;

    .line 935
    .line 936
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p0, p1, v0}, Lc4/r0;->b0(Lc4/F1;Lc4/J1;)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    .line 944
    .line 945
    goto :goto_9

    .line 946
    :pswitch_1a
    sget-object p1, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 947
    .line 948
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 949
    .line 950
    .line 951
    move-result-object p1

    .line 952
    check-cast p1, Lc4/u;

    .line 953
    .line 954
    sget-object v0, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 955
    .line 956
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, Lc4/J1;

    .line 961
    .line 962
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {p0, p1, v0}, Lc4/r0;->X0(Lc4/u;Lc4/J1;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    .line 970
    .line 971
    :goto_9
    const/4 v3, 0x1

    .line 972
    :goto_a
    return v3

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final Y0(Lc4/J1;)Lc4/j;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lc4/r0;->G:Lc4/A1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc4/A1;->d()Lc4/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lo3/F;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    invoke-direct {v3, p0, p1, v4}, Lo3/F;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lc4/j0;->t(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    const-wide/16 v3, 0x2710

    .line 28
    .line 29
    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lc4/j;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catch_2
    move-exception p1

    .line 41
    :goto_0
    invoke-virtual {v1}, Lc4/A1;->b()Lc4/T;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "Failed to get consent. appId"

    .line 50
    .line 51
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 52
    .line 53
    invoke-virtual {v1, v0, p1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lc4/j;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {p1, v0}, Lc4/j;-><init>(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final Z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v8, Lc4/p0;

    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    move-object v2, v8

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move-object v6, p3

    .line 19
    invoke-direct/range {v2 .. v7}, Lc4/p0;-><init>(Lc4/r0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v8}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p1

    .line 36
    :goto_0
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p3, "Failed to get conditional user properties as"

    .line 41
    .line 42
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 43
    .line 44
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final a0(Lc4/J1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lc4/J1;->a0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lc4/m0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lc4/r0;->j0(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final b0(Lc4/F1;Lc4/J1;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lc4/r0;->r1(Lc4/J1;)V

    .line 5
    .line 6
    .line 7
    new-instance v6, LZ3/v;

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v6}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b1(Landroid/os/Bundle;Lc4/J1;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object v3, p2, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance v7, Lk/g;

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    move-object v4, p2

    .line 18
    invoke-direct/range {v0 .. v6}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v7}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;Lc4/J1;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0, p3}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object v2, p3, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Lc4/r0;->G:Lc4/A1;

    .line 10
    .line 11
    invoke-virtual {p3}, Lc4/A1;->d()Lc4/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v7, Lc4/p0;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    move-object v0, v7

    .line 19
    move-object v1, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Lc4/p0;-><init>(Lc4/r0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v7}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    :goto_0
    invoke-virtual {p3}, Lc4/A1;->b()Lc4/T;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, "Failed to get conditional user properties"

    .line 44
    .line 45
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 46
    .line 47
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final i2(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "Unknown calling package name \'"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lc4/r0;->G:Lc4/A1;

    .line 8
    .line 9
    if-nez v1, :cond_7

    .line 10
    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lc4/r0;->H:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    const-string p2, "com.google.android.gms"

    .line 18
    .line 19
    iget-object v1, p0, Lc4/r0;->I:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v1, 0x1

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iget-object p2, v2, Lc4/A1;->R:Lc4/l0;

    .line 29
    .line 30
    iget-object p2, p2, Lc4/l0;->G:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {p2, v3}, LS3/e;->i(Landroid/content/Context;I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    iget-object p2, v2, Lc4/A1;->R:Lc4/l0;

    .line 43
    .line 44
    iget-object p2, p2, Lc4/l0;->G:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p2}, LJ3/k;->b(Landroid/content/Context;)LJ3/k;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p2, v3}, LJ3/k;->e(I)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lc4/r0;->H:Ljava/lang/Boolean;

    .line 70
    .line 71
    :cond_2
    iget-object p2, p0, Lc4/r0;->H:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_5

    .line 78
    .line 79
    :cond_3
    iget-object p2, p0, Lc4/r0;->I:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    iget-object p2, v2, Lc4/A1;->R:Lc4/l0;

    .line 84
    .line 85
    iget-object p2, p2, Lc4/l0;->G:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sget-object v3, LJ3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    invoke-static {v1, p2, p1}, LS3/e;->r(ILandroid/content/Context;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    iput-object p1, p0, Lc4/r0;->I:Ljava/lang/String;

    .line 100
    .line 101
    :cond_4
    iget-object p2, p0, Lc4/r0;->I:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    :cond_5
    return-void

    .line 110
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\'."

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    invoke-virtual {v2}, Lc4/A1;->b()Lc4/T;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 142
    .line 143
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 144
    .line 145
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p2

    .line 149
    :cond_7
    invoke-virtual {v2}, Lc4/A1;->b()Lc4/T;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 154
    .line 155
    const-string p2, "Measurement Service called without app package"

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/lang/SecurityException;

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public final j0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lc4/j0;->z()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Lc4/m0;

    .line 14
    .line 15
    invoke-virtual {p1}, Lc4/m0;->run()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lc4/j0;->y(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final k0(Ljava/lang/String;Ljava/lang/String;ZLc4/J1;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p0, p4}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object p4, p4, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v6, p0, Lc4/r0;->G:Lc4/A1;

    .line 10
    .line 11
    invoke-virtual {v6}, Lc4/A1;->d()Lc4/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    new-instance v8, Lc4/p0;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, v8

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p4

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Lc4/p0;-><init>(Lc4/r0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v8}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/List;

    .line 35
    .line 36
    new-instance p2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lc4/G1;

    .line 60
    .line 61
    if-nez p3, :cond_1

    .line 62
    .line 63
    iget-object v1, v0, Lc4/G1;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    new-instance v1, Lc4/F1;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lc4/F1;-><init>(Lc4/G1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-object p2

    .line 86
    :goto_2
    invoke-virtual {v6}, Lc4/A1;->b()Lc4/T;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    const-string p4, "Failed to query user properties. appId"

    .line 95
    .line 96
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 97
    .line 98
    invoke-virtual {p2, p3, p1, p4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public final m0(Lc4/u;Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p2, v0}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lc4/A1;->R:Lc4/l0;

    .line 18
    .line 19
    iget-object v3, v2, Lc4/l0;->S:Lc4/O;

    .line 20
    .line 21
    iget-object v4, p1, Lc4/u;->G:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "Log and bundle. event"

    .line 28
    .line 29
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 30
    .line 31
    invoke-virtual {v1, v3, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, LP3/b;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const-wide/32 v7, 0xf4240

    .line 48
    .line 49
    .line 50
    div-long/2addr v5, v7

    .line 51
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lv3/d;

    .line 56
    .line 57
    invoke-direct {v3, p0, p1, p2}, Lv3/d;-><init>(Lc4/r0;Lc4/u;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lc4/j0;->t(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, [B

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 77
    .line 78
    const-string v1, "Log and bundle returned null. appId"

    .line 79
    .line 80
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p1, v3, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    new-array p1, p1, [B

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p1

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, LP3/b;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    div-long/2addr v9, v7

    .line 109
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 114
    .line 115
    const-string v3, "Log and bundle processed. event, size, time_ms"

    .line 116
    .line 117
    iget-object v7, v2, Lc4/l0;->S:Lc4/O;

    .line 118
    .line 119
    invoke-virtual {v7, v4}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    array-length v8, p1

    .line 124
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    sub-long/2addr v9, v5

    .line 129
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v1, v7, v8, v5, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :goto_1
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iget-object v1, v2, Lc4/l0;->S:Lc4/O;

    .line 146
    .line 147
    invoke-virtual {v1, v4}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 152
    .line 153
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 154
    .line 155
    invoke-virtual {v0, p2, v1, p1, v2}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 p1, 0x0

    .line 159
    return-object p1
.end method

.method public final n2(Lc4/u;Lc4/J1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lc4/A1;->n(Lc4/u;Lc4/J1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o2(Lc4/f;Lc4/J1;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc4/f;->I:Lc4/F1;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lc4/r0;->r1(Lc4/J1;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lc4/f;

    .line 13
    .line 14
    invoke-direct {v3, p1}, Lc4/f;-><init>(Lc4/f;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lc4/J1;->G:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, v3, Lc4/f;->G:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, LZ3/v;

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p0

    .line 27
    move-object v4, p2

    .line 28
    invoke-direct/range {v1 .. v6}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final r1(Lc4/J1;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lc4/A1;->f()Lc4/I1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p1, Lc4/J1;->H:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lc4/J1;->V:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lc4/I1;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r3(Lc4/J1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lc4/r0;->i2(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lc4/m0;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final t0(Lc4/J1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc4/m0;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final t2(Lc4/J1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lc4/J1;->a0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lc4/m0;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lc4/m0;-><init>(Lc4/r0;Lc4/J1;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lc4/r0;->j0(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final v0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lc4/j0;->z()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final v3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lc4/n0;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p4

    .line 7
    move-object v3, p5

    .line 8
    move-object v4, p3

    .line 9
    move-wide v5, p1

    .line 10
    invoke-direct/range {v0 .. v7}, Lc4/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v8}, Lc4/r0;->v0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final w1(Lc4/J1;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lc4/r0;->r1(Lc4/J1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/r0;->G:Lc4/A1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lo3/F;

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-direct {v2, v0, p1, v3}, Lo3/F;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lc4/j0;->s(Ljava/util/concurrent/Callable;)Lc4/h0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v3, 0x7530

    .line 23
    .line 24
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :catch_2
    move-exception v1

    .line 36
    :goto_0
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p1, p1, Lc4/J1;->G:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v2, "Failed to get app instance id. appId"

    .line 47
    .line 48
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    :goto_1
    return-object v1
.end method
