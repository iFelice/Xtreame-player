.class public final Lcom/google/android/gms/internal/ads/ne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/math/BigInteger;

.field public b:Ljava/lang/String;


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ne;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
