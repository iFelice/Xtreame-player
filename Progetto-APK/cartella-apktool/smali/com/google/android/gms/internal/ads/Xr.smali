.class public final synthetic Lcom/google/android/gms/internal/ads/Xr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Yr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Yr;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Xr;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xr;->H:Lcom/google/android/gms/internal/ads/Yr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Xr;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xr;->H:Lcom/google/android/gms/internal/ads/Yr;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/Xr;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Xr;-><init>(Lcom/google/android/gms/internal/ads/Yr;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yr;->f:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xr;->H:Lcom/google/android/gms/internal/ads/Yr;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Yr;->b:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Yr;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Yr;->e:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Yr;->d:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yr;->i()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yr;->j()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yr;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0

    .line 59
    throw v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
