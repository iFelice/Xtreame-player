.class public final Lcom/google/android/gms/internal/ads/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/pz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/pz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 10
    .line 11
    const-string p1, "LmdServiceConnectionManager.onServiceConnected(%s)"

    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/J;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/co;

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    invoke-direct {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 10
    .line 11
    const-string p1, "LmdServiceConnectionManager.onServiceDisconnected(%s)"

    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/J;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/Zn;

    .line 17
    .line 18
    const/16 v1, 0x12

    .line 19
    .line 20
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
