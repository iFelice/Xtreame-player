.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lcom/google/android/gms/internal/measurement/J;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field public G:Lc4/l0;

.field public final H:Lr/f;


# direct methods
.method public static $r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/P;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/P;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lc4/l0;->O:Lc4/T;

    .line 12
    .line 13
    invoke-static {p0}, Lc4/l0;->k(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "Failed to call IDynamiteUploadBatchesCallback"

    .line 17
    .line 18
    iget-object p0, p0, Lc4/T;->O:Lc4/Q;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/x;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 8
    .line 9
    new-instance v0, Lr/f;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lr/m;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->H:Lr/f;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->W:Lc4/x;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->h(Lc4/z;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lc4/x;->n(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lc4/K0;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lc4/B;->n()V

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lc4/l0;

    .line 17
    .line 18
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 19
    .line 20
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, LK3/V;

    .line 24
    .line 25
    const/16 v1, 0xb

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v1, p1, v2}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->W:Lc4/x;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->h(Lc4/z;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2, p3, p1}, Lc4/x;->o(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public generateEventId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc4/I1;->y0()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 19
    .line 20
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 21
    .line 22
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1, v0, v1}, Lc4/I1;->N(Lcom/google/android/gms/internal/measurement/M;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lc4/o0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lc4/o0;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    new-instance v7, Lk/g;

    .line 12
    .line 13
    const/16 v6, 0xf

    .line 14
    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    invoke-direct/range {v1 .. v6}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/l0;

    .line 14
    .line 15
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 16
    .line 17
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lc4/V0;->I:Lc4/S0;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lc4/S0;->b:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getCurrentScreenName(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/l0;

    .line 14
    .line 15
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 16
    .line 17
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lc4/V0;->I:Lc4/S0;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lc4/S0;->a:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getGmpAppId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    iget-object v2, v1, Lc4/l0;->M:Lc4/h;

    .line 16
    .line 17
    sget-object v3, Lc4/E;->q1:Lc4/D;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, v4, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lc4/l0;

    .line 29
    .line 30
    invoke-virtual {v2}, Lc4/l0;->s()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lc4/l0;

    .line 39
    .line 40
    invoke-virtual {v0}, Lc4/l0;->s()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    iget-object v1, v1, Lc4/l0;->G:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lc4/l0;

    .line 50
    .line 51
    iget-object v2, v2, Lc4/l0;->Y:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
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
    const-string v2, "getGoogleAppId failed with exception"

    .line 69
    .line 70
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lc4/l0;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 25
    .line 26
    iget-object p1, p1, Lc4/l0;->R:Lc4/I1;

    .line 27
    .line 28
    invoke-static {p1}, Lc4/l0;->i(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x19

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lc4/I1;->M(Lcom/google/android/gms/internal/measurement/M;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getSessionId(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 16
    .line 17
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, LK3/V;

    .line 21
    .line 22
    const/16 v3, 0xa

    .line 23
    .line 24
    invoke-direct {v2, v3, v0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getTestFlag(Lcom/google/android/gms/internal/measurement/M;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq p2, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_2

    .line 13
    .line 14
    if-eq p2, v0, :cond_1

    .line 15
    .line 16
    if-eq p2, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 20
    .line 21
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 22
    .line 23
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 27
    .line 28
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 29
    .line 30
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lc4/l0;

    .line 41
    .line 42
    iget-object v2, v2, Lc4/l0;->P:Lc4/j0;

    .line 43
    .line 44
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lc4/C0;

    .line 48
    .line 49
    invoke-direct {v7, v0, v3, v1}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v4, 0x3a98

    .line 53
    .line 54
    const-string v6, "boolean test flag value"

    .line 55
    .line 56
    invoke-virtual/range {v2 .. v7}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p2, p1, v0}, Lc4/I1;->I(Lcom/google/android/gms/internal/measurement/M;Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 71
    .line 72
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 73
    .line 74
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 78
    .line 79
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 80
    .line 81
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lc4/l0;

    .line 92
    .line 93
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 94
    .line 95
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lc4/C0;

    .line 99
    .line 100
    const/4 v3, 0x5

    .line 101
    invoke-direct {v6, v0, v2, v3}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 102
    .line 103
    .line 104
    const-wide/16 v3, 0x3a98

    .line 105
    .line 106
    const-string v5, "int test flag value"

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v6}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p2, p1, v0}, Lc4/I1;->M(Lcom/google/android/gms/internal/measurement/M;I)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 123
    .line 124
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 125
    .line 126
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 130
    .line 131
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 132
    .line 133
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 134
    .line 135
    .line 136
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lc4/l0;

    .line 144
    .line 145
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 146
    .line 147
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Lc4/C0;

    .line 151
    .line 152
    const/4 v3, 0x6

    .line 153
    invoke-direct {v6, v0, v2, v3}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v3, 0x3a98

    .line 157
    .line 158
    const-string v5, "double test flag value"

    .line 159
    .line 160
    invoke-virtual/range {v1 .. v6}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/Double;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    new-instance v2, Landroid/os/Bundle;

    .line 171
    .line 172
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v3, "r"

    .line 176
    .line 177
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 178
    .line 179
    .line 180
    :try_start_0
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catch_0
    move-exception p1

    .line 185
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p2, Lc4/l0;

    .line 188
    .line 189
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 190
    .line 191
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 192
    .line 193
    .line 194
    const-string v0, "Error returning double value to wrapper"

    .line 195
    .line 196
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 197
    .line 198
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 203
    .line 204
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 205
    .line 206
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 210
    .line 211
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 212
    .line 213
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 214
    .line 215
    .line 216
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 217
    .line 218
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v1, Lc4/l0;

    .line 224
    .line 225
    iget-object v3, v1, Lc4/l0;->P:Lc4/j0;

    .line 226
    .line 227
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 228
    .line 229
    .line 230
    new-instance v8, Lc4/C0;

    .line 231
    .line 232
    invoke-direct {v8, v0, v4, v2}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 233
    .line 234
    .line 235
    const-wide/16 v5, 0x3a98

    .line 236
    .line 237
    const-string v7, "long test flag value"

    .line 238
    .line 239
    invoke-virtual/range {v3 .. v8}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Long;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v0

    .line 249
    invoke-virtual {p2, p1, v0, v1}, Lc4/I1;->N(Lcom/google/android/gms/internal/measurement/M;J)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 254
    .line 255
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 256
    .line 257
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 261
    .line 262
    iget-object v1, v1, Lc4/l0;->V:Lc4/K0;

    .line 263
    .line 264
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 265
    .line 266
    .line 267
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    .line 269
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 270
    .line 271
    .line 272
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v2, Lc4/l0;

    .line 275
    .line 276
    iget-object v2, v2, Lc4/l0;->P:Lc4/j0;

    .line 277
    .line 278
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 279
    .line 280
    .line 281
    new-instance v7, Lc4/C0;

    .line 282
    .line 283
    invoke-direct {v7, v1, v3, v0}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 284
    .line 285
    .line 286
    const-wide/16 v4, 0x3a98

    .line 287
    .line 288
    const-string v6, "String test flag value"

    .line 289
    .line 290
    invoke-virtual/range {v2 .. v7}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p2, v0, p1}, Lc4/I1;->O(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/M;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    new-instance v7, LY/f;

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p4

    .line 16
    move-object v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move v6, p3

    .line 19
    invoke-direct/range {v1 .. v6}, LY/f;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initialize(LR3/a;Lcom/google/android/gms/internal/measurement/V;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p1, p2, p3}, Lc4/l0;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)Lc4/l0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, v0, Lc4/l0;->O:Lc4/T;

    .line 26
    .line 27
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "Attempting to initialize multiple times"

    .line 31
    .line 32
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/M;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lc4/o0;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lc4/o0;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final j0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lc4/I1;->O(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 6
    .line 7
    iget-object v2, v1, Lc4/l0;->V:Lc4/K0;

    .line 8
    .line 9
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 10
    .line 11
    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move v6, p4

    .line 16
    move v7, p5

    .line 17
    move-wide/from16 v8, p6

    .line 18
    .line 19
    invoke-virtual/range {v2 .. v9}, Lc4/K0;->x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    const-string v2, "_o"

    .line 23
    .line 24
    const-string v6, "app"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v10, Lc4/u;

    .line 30
    .line 31
    new-instance v5, Lc4/t;

    .line 32
    .line 33
    invoke-direct {v5, v0}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    move-object v3, v10

    .line 37
    move-object v4, p2

    .line 38
    move-wide/from16 v7, p5

    .line 39
    .line 40
    invoke-direct/range {v3 .. v8}, Lc4/u;-><init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    move-object v0, p0

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 45
    .line 46
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 47
    .line 48
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lk/g;

    .line 52
    .line 53
    const/16 v12, 0xb

    .line 54
    .line 55
    move-object v7, v2

    .line 56
    move-object v8, p0

    .line 57
    move-object/from16 v9, p4

    .line 58
    .line 59
    move-object v11, p1

    .line 60
    invoke-direct/range {v7 .. v12}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public logHealthData(ILjava/lang/String;LR3/a;LR3/a;LR3/a;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    move-object v6, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    move-object v6, p3

    .line 14
    :goto_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    move-object v7, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    move-object v7, p3

    .line 23
    :goto_1
    if-nez p5, :cond_2

    .line 24
    .line 25
    :goto_2
    move-object v8, v0

    .line 26
    goto :goto_3

    .line 27
    :cond_2
    invoke-static {p5}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_2

    .line 32
    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 33
    .line 34
    iget-object v1, p3, Lc4/l0;->O:Lc4/T;

    .line 35
    .line 36
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    move v2, p1

    .line 42
    move-object v5, p2

    .line 43
    invoke-virtual/range {v1 .. v8}, Lc4/T;->y(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onActivityCreated(LR3/a;Landroid/os/Bundle;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p3, p3, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p3, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p4, p4, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p4}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/measurement/l0;->a(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(LR3/a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p2, p2, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p2}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p3, p3, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/l0;->b(Lcom/google/android/gms/internal/measurement/W;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivityPaused(LR3/a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p2, p2, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p2}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p3, p3, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/l0;->c(Lcom/google/android/gms/internal/measurement/W;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivityResumed(LR3/a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p2, p2, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p2}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p3, p3, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/l0;->d(Lcom/google/android/gms/internal/measurement/W;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(LR3/a;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p3, p3, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p3, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    new-instance p4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 21
    .line 22
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 23
    .line 24
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lc4/K0;->t()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1, p4}, Lcom/google/android/gms/internal/measurement/l0;->e(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 39
    .line 40
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 41
    .line 42
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 43
    .line 44
    .line 45
    const-string p3, "Error returning bundle value to wrapper"

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
.end method

.method public onActivityStarted(LR3/a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onActivityStopped(LR3/a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 16
    .line 17
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 18
    .line 19
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lc4/K0;->t()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->H:Lr/f;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->J()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lc4/z0;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lc4/D1;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lc4/D1;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/S;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->J()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1, v1}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 44
    .line 45
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 46
    .line 47
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lc4/B;->n()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lc4/K0;->K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lc4/l0;

    .line 64
    .line 65
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 66
    .line 67
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "OnEventListener already registered"

    .line 71
    .line 72
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lc4/l0;

    .line 20
    .line 21
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 22
    .line 23
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lc4/G0;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-direct {v2, v0, p1, p2, v3}, Lc4/G0;-><init>(Lc4/K0;JI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/P;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 9
    .line 10
    sget-object v2, Lc4/E;->S0:Lc4/D;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 21
    .line 22
    iget-object v4, v0, Lc4/l0;->V:Lc4/K0;

    .line 23
    .line 24
    invoke-static {v4}, Lc4/l0;->j(Lc4/B;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, LK3/V;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    move-object/from16 v6, p1

    .line 31
    .line 32
    invoke-direct {v5, v1, v6, v0}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v6, v0

    .line 38
    check-cast v6, Lc4/l0;

    .line 39
    .line 40
    iget-object v0, v6, Lc4/l0;->M:Lc4/h;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_e

    .line 47
    .line 48
    invoke-virtual {v4}, Lc4/B;->n()V

    .line 49
    .line 50
    .line 51
    iget-object v0, v6, Lc4/l0;->P:Lc4/j0;

    .line 52
    .line 53
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lc4/j0;->z()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_d

    .line 61
    .line 62
    iget-object v0, v6, Lc4/l0;->P:Lc4/j0;

    .line 63
    .line 64
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v0, v0, Lc4/j0;->J:Lc4/i0;

    .line 72
    .line 73
    if-ne v2, v0, :cond_1

    .line 74
    .line 75
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 76
    .line 77
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 81
    .line 82
    const-string v2, "Cannot retrieve and upload batches from analytics network thread"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_a

    .line 88
    .line 89
    :cond_1
    invoke-static {}, LS3/g;->d()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_c

    .line 94
    .line 95
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 96
    .line 97
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 101
    .line 102
    const-string v2, "[sgtm] Started client-side batch upload work."

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    :goto_0
    if-nez v0, :cond_b

    .line 111
    .line 112
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 113
    .line 114
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 118
    .line 119
    const-string v8, "[sgtm] Getting upload batches from service (FE)"

    .line 120
    .line 121
    invoke-virtual {v0, v8}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v9, v6, Lc4/l0;->P:Lc4/j0;

    .line 130
    .line 131
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 132
    .line 133
    .line 134
    new-instance v14, Lc4/C0;

    .line 135
    .line 136
    const/4 v8, 0x1

    .line 137
    invoke-direct {v14, v4, v0, v8}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 138
    .line 139
    .line 140
    const-wide/16 v11, 0x2710

    .line 141
    .line 142
    const-string v13, "[sgtm] Getting upload batches"

    .line 143
    .line 144
    move-object v10, v0

    .line 145
    invoke-virtual/range {v9 .. v14}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lc4/t1;

    .line 153
    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    iget-object v0, v0, Lc4/t1;->G:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_2

    .line 163
    .line 164
    goto/16 :goto_9

    .line 165
    .line 166
    :cond_2
    iget-object v9, v6, Lc4/l0;->O:Lc4/T;

    .line 167
    .line 168
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 169
    .line 170
    .line 171
    iget-object v9, v9, Lc4/T;->T:Lc4/Q;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    const-string v11, "[sgtm] Retrieved upload batches. count"

    .line 182
    .line 183
    invoke-virtual {v9, v10, v11}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    add-int/2addr v3, v9

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    move-object v10, v0

    .line 206
    check-cast v10, Lc4/r1;

    .line 207
    .line 208
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 209
    .line 210
    iget-object v11, v10, Lc4/r1;->I:Ljava/lang/String;

    .line 211
    .line 212
    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 216
    .line 217
    .line 218
    move-result-object v15
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    .line 220
    .line 221
    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Lc4/l0;

    .line 227
    .line 228
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 233
    .line 234
    .line 235
    iget-object v12, v0, Lc4/L;->M:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v12}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object v14, v0, Lc4/L;->M:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, Lc4/l0;

    .line 245
    .line 246
    iget-object v12, v0, Lc4/l0;->O:Lc4/T;

    .line 247
    .line 248
    invoke-static {v12}, Lc4/l0;->k(Lc4/s0;)V

    .line 249
    .line 250
    .line 251
    iget-object v12, v12, Lc4/T;->T:Lc4/Q;

    .line 252
    .line 253
    move/from16 v19, v3

    .line 254
    .line 255
    iget-wide v2, v10, Lc4/r1;->G:J

    .line 256
    .line 257
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v3, v10, Lc4/r1;->I:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v13, v10, Lc4/r1;->H:[B

    .line 264
    .line 265
    array-length v13, v13

    .line 266
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    const-string v8, "[sgtm] Uploading data from app. row_id, url, uncompressed size"

    .line 271
    .line 272
    invoke-virtual {v12, v2, v3, v13, v8}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v10, Lc4/r1;->M:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-nez v3, :cond_3

    .line 282
    .line 283
    iget-object v3, v0, Lc4/l0;->O:Lc4/T;

    .line 284
    .line 285
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 286
    .line 287
    .line 288
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 289
    .line 290
    iget-object v8, v10, Lc4/r1;->M:Ljava/lang/String;

    .line 291
    .line 292
    const-string v12, "[sgtm] Uploading data from app. row_id"

    .line 293
    .line 294
    invoke-virtual {v3, v2, v8, v12}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 300
    .line 301
    .line 302
    iget-object v3, v10, Lc4/r1;->J:Landroid/os/Bundle;

    .line 303
    .line 304
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    if-eqz v12, :cond_5

    .line 317
    .line 318
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    check-cast v12, Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v3, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v16

    .line 332
    if-nez v16, :cond_4

    .line 333
    .line 334
    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_5
    iget-object v13, v0, Lc4/l0;->X:Lc4/N0;

    .line 339
    .line 340
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 341
    .line 342
    .line 343
    iget-object v3, v10, Lc4/r1;->H:[B

    .line 344
    .line 345
    new-instance v8, Lcom/google/android/gms/internal/ads/bD;

    .line 346
    .line 347
    const/16 v12, 0xe

    .line 348
    .line 349
    invoke-direct {v8, v4, v11, v10, v12}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13}, Lc4/s0;->o()V

    .line 353
    .line 354
    .line 355
    invoke-static {v15}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    iget-object v10, v13, Lc1/d;->G:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v10, Lc4/l0;

    .line 364
    .line 365
    iget-object v10, v10, Lc4/l0;->P:Lc4/j0;

    .line 366
    .line 367
    invoke-static {v10}, Lc4/l0;->k(Lc4/s0;)V

    .line 368
    .line 369
    .line 370
    new-instance v12, Lc4/V;

    .line 371
    .line 372
    move-object/from16 v20, v12

    .line 373
    .line 374
    move-object/from16 v16, v3

    .line 375
    .line 376
    move-object/from16 v17, v2

    .line 377
    .line 378
    move-object/from16 v18, v8

    .line 379
    .line 380
    invoke-direct/range {v12 .. v18}, Lc4/V;-><init>(Lc4/N0;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lc4/M0;)V

    .line 381
    .line 382
    .line 383
    move-object/from16 v2, v20

    .line 384
    .line 385
    invoke-virtual {v10, v2}, Lc4/j0;->w(Lc4/V;)V

    .line 386
    .line 387
    .line 388
    :try_start_1
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 389
    .line 390
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Lc4/l0;

    .line 396
    .line 397
    iget-object v2, v0, Lc4/l0;->T:LP3/b;

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 403
    .line 404
    .line 405
    move-result-wide v2

    .line 406
    const-wide/32 v12, 0xea60

    .line 407
    .line 408
    .line 409
    add-long/2addr v2, v12

    .line 410
    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    :goto_3
    :try_start_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    if-nez v8, :cond_6

    .line 416
    .line 417
    const-wide/16 v14, 0x0

    .line 418
    .line 419
    cmp-long v8, v12, v14

    .line 420
    .line 421
    if-lez v8, :cond_6

    .line 422
    .line 423
    invoke-virtual {v11, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 424
    .line 425
    .line 426
    iget-object v8, v0, Lc4/l0;->T:LP3/b;

    .line 427
    .line 428
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 432
    .line 433
    .line 434
    move-result-wide v12

    .line 435
    sub-long v12, v2, v12

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :catchall_0
    move-exception v0

    .line 439
    goto :goto_4

    .line 440
    :cond_6
    monitor-exit v11

    .line 441
    goto :goto_5

    .line 442
    :goto_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 444
    :catch_0
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v0, Lc4/l0;

    .line 447
    .line 448
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 449
    .line 450
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 451
    .line 452
    .line 453
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 454
    .line 455
    const-string v2, "[sgtm] Interrupted waiting for uploading batch"

    .line 456
    .line 457
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :goto_5
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    if-nez v0, :cond_7

    .line 465
    .line 466
    sget-object v0, Lc4/Q0;->H:Lc4/Q0;

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_7
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Lc4/Q0;

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :catch_1
    move-exception v0

    .line 477
    :goto_6
    move/from16 v19, v3

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :catch_2
    move-exception v0

    .line 481
    goto :goto_6

    .line 482
    :goto_7
    iget-object v2, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v2, Lc4/l0;

    .line 485
    .line 486
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 487
    .line 488
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 489
    .line 490
    .line 491
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 492
    .line 493
    iget-object v3, v10, Lc4/r1;->I:Ljava/lang/String;

    .line 494
    .line 495
    iget-wide v10, v10, Lc4/r1;->G:J

    .line 496
    .line 497
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    const-string v10, "[sgtm] Bad upload url for row_id"

    .line 502
    .line 503
    invoke-virtual {v2, v3, v8, v0, v10}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    sget-object v0, Lc4/Q0;->J:Lc4/Q0;

    .line 507
    .line 508
    :goto_8
    sget-object v2, Lc4/Q0;->I:Lc4/Q0;

    .line 509
    .line 510
    if-ne v0, v2, :cond_9

    .line 511
    .line 512
    add-int/lit8 v7, v7, 0x1

    .line 513
    .line 514
    move/from16 v3, v19

    .line 515
    .line 516
    :cond_8
    const/4 v8, 0x1

    .line 517
    goto/16 :goto_1

    .line 518
    .line 519
    :cond_9
    sget-object v2, Lc4/Q0;->K:Lc4/Q0;

    .line 520
    .line 521
    move/from16 v3, v19

    .line 522
    .line 523
    if-ne v0, v2, :cond_8

    .line 524
    .line 525
    const/4 v0, 0x1

    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :cond_a
    move/from16 v19, v3

    .line 529
    .line 530
    const/4 v0, 0x0

    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_b
    :goto_9
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 534
    .line 535
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 539
    .line 540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    const-string v4, "[sgtm] Completed client-side batch upload work. total, success"

    .line 549
    .line 550
    invoke-virtual {v0, v2, v3, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5}, LK3/V;->run()V

    .line 554
    .line 555
    .line 556
    goto :goto_a

    .line 557
    :cond_c
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 558
    .line 559
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 563
    .line 564
    const-string v2, "Cannot retrieve and upload batches from main thread"

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_d
    iget-object v0, v6, Lc4/l0;->O:Lc4/T;

    .line 571
    .line 572
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 573
    .line 574
    .line 575
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 576
    .line 577
    const-string v2, "Cannot retrieve and upload batches from analytics worker thread"

    .line 578
    .line 579
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    :cond_e
    :goto_a
    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "Conditional user property must not be null"

    .line 14
    .line 15
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 22
    .line 23
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 24
    .line 25
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lc4/K0;->C(Landroid/os/Bundle;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v2, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/l0;

    .line 14
    .line 15
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 16
    .line 17
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    new-instance v8, Lr2/j;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v1, v8

    .line 25
    move-object v3, p1

    .line 26
    move-wide v4, p2

    .line 27
    invoke-direct/range {v1 .. v7}, Lr2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;JII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v8}, Lc4/j0;->y(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    const/16 v1, -0x14

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, p2, p3}, Lc4/K0;->D(Landroid/os/Bundle;IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCurrentScreen(LR3/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v0, p0

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    move-wide v4, p4

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p4, p4, Lc4/l0;->U:Lc4/V0;

    .line 7
    .line 8
    invoke-static {p4}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object p5, p4, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p5, Lc4/l0;

    .line 14
    .line 15
    iget-object v0, p5, Lc4/l0;->M:Lc4/h;

    .line 16
    .line 17
    invoke-virtual {v0}, Lc4/h;->C()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 24
    .line 25
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 29
    .line 30
    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    iget-object v0, p4, Lc4/V0;->I:Lc4/S0;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 42
    .line 43
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 47
    .line 48
    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    iget-object v1, p4, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    iget v2, p1, Lcom/google/android/gms/internal/measurement/W;->G:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 70
    .line 71
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 75
    .line 76
    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_2
    if-nez p3, :cond_3

    .line 84
    .line 85
    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/W;->H:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p4, p3}, Lc4/V0;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    :cond_3
    iget-object v3, v0, Lc4/S0;->b:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v0, v0, Lc4/S0;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 109
    .line 110
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 114
    .line 115
    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    if-eqz p2, :cond_7

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-lez v4, :cond_6

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iget-object v5, p5, Lc4/l0;->M:Lc4/h;

    .line 137
    .line 138
    invoke-virtual {v5, v3, v0}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-gt v4, v5, :cond_6

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 146
    .line 147
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 161
    .line 162
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-lez v4, :cond_8

    .line 173
    .line 174
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    iget-object v5, p5, Lc4/l0;->M:Lc4/h;

    .line 179
    .line 180
    invoke-virtual {v5, v3, v0}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-gt v4, v0, :cond_8

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    iget-object p1, p5, Lc4/l0;->O:Lc4/T;

    .line 188
    .line 189
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 193
    .line 194
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    .line 203
    .line 204
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_9
    :goto_2
    iget-object v0, p5, Lc4/l0;->O:Lc4/T;

    .line 209
    .line 210
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 214
    .line 215
    if-nez p2, :cond_a

    .line 216
    .line 217
    const-string v3, "null"

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_a
    move-object v3, p2

    .line 221
    :goto_3
    const-string v4, "Setting current screen to name, class"

    .line 222
    .line 223
    invoke-virtual {v0, v3, p3, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lc4/S0;

    .line 227
    .line 228
    iget-object p5, p5, Lc4/l0;->R:Lc4/I1;

    .line 229
    .line 230
    invoke-static {p5}, Lc4/l0;->i(Lc4/s0;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p5}, Lc4/I1;->y0()J

    .line 234
    .line 235
    .line 236
    move-result-wide v3

    .line 237
    invoke-direct {v0, v3, v4, p2, p3}, Lc4/S0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/W;->H:Ljava/lang/String;

    .line 244
    .line 245
    const/4 p2, 0x1

    .line 246
    invoke-virtual {p4, p1, v0, p2}, Lc4/V0;->q(Ljava/lang/String;Lc4/S0;Z)V

    .line 247
    .line 248
    .line 249
    :goto_4
    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lc4/l0;

    .line 17
    .line 18
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 19
    .line 20
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lc0/a;

    .line 24
    .line 25
    const/16 v3, 0x9

    .line 26
    .line 27
    invoke-direct {v2, v3, v0, p1}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v1

    .line 25
    :goto_0
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lc4/l0;

    .line 28
    .line 29
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 30
    .line 31
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lc4/D0;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, v0, p1, v3}, Lc4/D0;-><init>(Lc4/K0;Landroid/os/Bundle;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm2/l;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, v1}, Lm2/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 12
    .line 13
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 14
    .line 15
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lc4/j0;->z()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 25
    .line 26
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 27
    .line 28
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lc4/z;->m()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lc4/B;->n()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lc4/K0;->J:Lm2/l;

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    const-string v2, "EventInterceptor already set."

    .line 47
    .line 48
    invoke-static {v2, v1}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iput-object v0, p1, Lc4/K0;->J:Lm2/l;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 55
    .line 56
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 57
    .line 58
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, LK3/V;

    .line 62
    .line 63
    const/16 v2, 0xd

    .line 64
    .line 65
    invoke-direct {v1, v2, p0, v0}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/U;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object p2, p2, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {p2}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lc4/B;->n()V

    .line 16
    .line 17
    .line 18
    iget-object p3, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p3, Lc4/l0;

    .line 21
    .line 22
    iget-object p3, p3, Lc4/l0;->P:Lc4/j0;

    .line 23
    .line 24
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, LK3/V;

    .line 28
    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    invoke-direct {v0, v1, p2, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 16
    .line 17
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lc4/G0;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v0, p1, p2, v3}, Lc4/G0;-><init>(Lc4/K0;JI)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setSgtmDebugInfo(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lc4/l0;

    .line 20
    .line 21
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 22
    .line 23
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "Activity intent has no data. Preview Mode was not enabled."

    .line 27
    .line 28
    iget-object p1, p1, Lc4/T;->R:Lc4/Q;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string v1, "sgtm_debug_enable"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const-string v2, "1"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v1, "sgtm_preview_key"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lc4/l0;

    .line 66
    .line 67
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: "

    .line 73
    .line 74
    iget-object v1, v1, Lc4/T;->R:Lc4/Q;

    .line 75
    .line 76
    invoke-virtual {v1, p1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 80
    .line 81
    iput-object p1, v0, Lc4/h;->I:Ljava/lang/String;

    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    :goto_0
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lc4/l0;

    .line 87
    .line 88
    iget-object v0, p1, Lc4/l0;->O:Lc4/T;

    .line 89
    .line 90
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "[sgtm] Preview Mode was not enabled."

    .line 94
    .line 95
    iget-object v0, v0, Lc4/T;->R:Lc4/Q;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p1, Lc4/l0;->M:Lc4/h;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    iput-object v0, p1, Lc4/h;->I:Ljava/lang/String;

    .line 104
    .line 105
    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 5
    .line 6
    iget-object v1, v0, Lc4/l0;->V:Lc4/K0;

    .line 7
    .line 8
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lc4/l0;

    .line 22
    .line 23
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 24
    .line 25
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    const-string p2, "User ID must be non-empty or null"

    .line 29
    .line 30
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lc4/l0;

    .line 39
    .line 40
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 41
    .line 42
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, LK3/V;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-direct {v2, v1, p1, v3}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    const/4 v2, 0x0

    .line 57
    const-string v3, "_id"

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    move-wide v6, p2

    .line 61
    invoke-virtual/range {v1 .. v7}, Lc4/K0;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;LR3/a;ZJ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 9
    .line 10
    iget-object v0, p3, Lc4/l0;->V:Lc4/K0;

    .line 11
    .line 12
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 13
    .line 14
    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move v4, p4

    .line 18
    move-wide v5, p5

    .line 19
    invoke-virtual/range {v0 .. v6}, Lc4/K0;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->H:Lr/f;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/S;->J()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lc4/z0;

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lc4/D1;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lc4/D1;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/S;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 30
    .line 31
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 32
    .line 33
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lc4/B;->n()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lc4/K0;->K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lc4/l0;

    .line 50
    .line 51
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 52
    .line 53
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "OnEventListener had not been registered"

    .line 57
    .line 58
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Attempting to perform action before initialize."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
