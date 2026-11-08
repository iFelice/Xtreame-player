.class public final Lcom/google/android/gms/internal/ads/ph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pj;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Ov;

.field public final H:Lcom/google/android/gms/internal/ads/oe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/oe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ph;->G:Lcom/google/android/gms/internal/ads/Ov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ph;->H:Lcom/google/android/gms/internal/ads/oe;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ph;->G:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->r0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ph;->H:Lcom/google/android/gms/internal/ads/oe;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oe;->a:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oe;->d:Lcom/google/android/gms/internal/ads/me;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/me;->f()V

    .line 15
    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
