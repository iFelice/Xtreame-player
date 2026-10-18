.class public final synthetic Lcom/google/android/gms/internal/ads/Rq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gl;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Sq;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/sq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Sq;Lcom/google/android/gms/internal/ads/sq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rq;->G:Lcom/google/android/gms/internal/ads/Sq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Rq;->H:Lcom/google/android/gms/internal/ads/sq;

    return-void
.end method


# virtual methods
.method public final c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Rq;->H:Lcom/google/android/gms/internal/ads/sq;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rq;->G:Lcom/google/android/gms/internal/ads/Sq;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/gw;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/gw;->c(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Sq;->c:Lp3/a;

    .line 16
    .line 17
    iget p1, p1, Lp3/a;->I:I

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->B0:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 22
    .line 23
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 36
    .line 37
    if-ge p1, v0, :cond_0

    .line 38
    .line 39
    :try_start_1
    check-cast p3, Lcom/google/android/gms/internal/ads/gw;

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eb;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_3
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    check-cast p3, Lcom/google/android/gms/internal/ads/gw;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_3 .. :try_end_3} :catch_0

    .line 62
    .line 63
    .line 64
    :try_start_4
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 65
    .line 66
    new-instance p3, LR3/b;

    .line 67
    .line 68
    invoke-direct {p3, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/eb;->O0(LR3/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    :try_start_5
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 77
    .line 78
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_5 .. :try_end_5} :catch_0

    .line 82
    :goto_1
    const-string p2, "Cannot show interstitial."

    .line 83
    .line 84
    invoke-static {p2}, Lp3/h;->f(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lcom/google/android/gms/internal/ads/fl;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2
.end method
