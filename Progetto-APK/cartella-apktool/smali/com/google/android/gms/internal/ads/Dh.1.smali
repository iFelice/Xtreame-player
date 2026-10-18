.class public final Lcom/google/android/gms/internal/ads/Dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/G5;


# instance fields
.field public G:Lcom/google/android/gms/internal/ads/Ef;

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Lcom/google/android/gms/internal/ads/yh;

.field public final J:LP3/a;

.field public K:Z

.field public L:Z

.field public final M:Lcom/google/android/gms/internal/ads/Ah;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/yh;LP3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dh;->K:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dh;->L:Z

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/Ah;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ah;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dh;->M:Lcom/google/android/gms/internal/ads/Ah;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dh;->H:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dh;->I:Lcom/google/android/gms/internal/ads/yh;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dh;->J:LP3/a;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final F(Lcom/google/android/gms/internal/ads/F5;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dh;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/F5;->j:Z

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dh;->M:Lcom/google/android/gms/internal/ads/Ah;

    .line 10
    .line 11
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/Ah;->a:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dh;->J:LP3/a;

    .line 14
    .line 15
    check-cast v0, LP3/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/Ah;->c:J

    .line 25
    .line 26
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/Ah;->e:Lcom/google/android/gms/internal/ads/F5;

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Dh;->K:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Dh;->a()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dh;->I:Lcom/google/android/gms/internal/ads/yh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dh;->M:Lcom/google/android/gms/internal/ads/Ah;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yh;->a(Lcom/google/android/gms/internal/ads/Ah;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dh;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dh;->H:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 16
    .line 17
    const/16 v3, 0x16

    .line 18
    .line 19
    invoke-direct {v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :goto_0
    const-string v1, "Failed to call video active view js"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
