.class public final Lcom/google/android/gms/internal/ads/Gc;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;I)V
    .locals 10

    .line 1
    iput p5, p0, Lcom/google/android/gms/internal/ads/Gc;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p5, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    move-object v1, p5

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    :goto_0
    const/16 v3, 0x8

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v2, p2

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/16 v7, 0x5d

    .line 26
    .line 27
    move-object v4, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    move-object v8, p3

    .line 31
    move-object v9, p4

    .line 32
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gc;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lc4/G;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lc4/G;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lc4/F;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lc4/F;-><init>(Landroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v1

    .line 30
    :pswitch_0
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const-string v0, "com.google.android.gms.ads.internal.request.IAdsService"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/Nc;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    check-cast v1, Lcom/google/android/gms/internal/ads/Nc;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/Mc;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-object v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMinApkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gc;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/g;->getMinApkVersion()I

    move-result v0

    return v0

    :pswitch_0
    const v0, 0xbdfcb8

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gc;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0

    :pswitch_0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdsService"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gc;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0

    :pswitch_0
    const-string v0, "com.google.android.gms.ads.service.ADS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
