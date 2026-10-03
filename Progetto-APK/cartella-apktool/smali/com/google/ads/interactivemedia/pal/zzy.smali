.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lg4/i;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lg4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzy;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzy;->zzb:Lg4/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzy;->zza:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzy;->zzb:Lg4/i;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/pal/b2;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, LJ3/f;->b:LJ3/f;

    .line 11
    .line 12
    const v4, 0xc35000

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v0, v4}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    sget-object v3, Lcom/google/android/gms/internal/pal/d2;->a:Lcom/google/android/gms/internal/pal/d2;

    .line 23
    .line 24
    const-string v5, "com.google.android.gms.ads.adshield.internal.IAdShieldClient"

    .line 25
    .line 26
    new-instance v6, LR3/b;

    .line 27
    .line 28
    invoke-direct {v6, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v3, v0}, LR3/d;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/google/android/gms/internal/pal/g2;

    .line 36
    .line 37
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/pal/g2;->z3(LR3/b;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-interface {v3, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    instance-of v7, v6, Lcom/google/android/gms/internal/pal/f2;

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    check-cast v6, Lcom/google/android/gms/internal/pal/f2;

    .line 53
    .line 54
    :goto_0
    move-object v4, v6

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    nop

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/pal/e2;

    .line 59
    .line 60
    const/4 v7, 0x5

    .line 61
    invoke-direct {v6, v3, v5, v7}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LR3/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 66
    .line 67
    new-instance v4, Lcom/google/android/gms/internal/pal/c2;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/pal/c2;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-object v4, v2, Lcom/google/android/gms/internal/pal/b2;->a:Lcom/google/android/gms/internal/pal/f2;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
