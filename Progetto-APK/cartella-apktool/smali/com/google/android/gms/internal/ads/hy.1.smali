.class public final Lcom/google/android/gms/internal/ads/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hy;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hy;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/ty;->A()Lcom/google/android/gms/internal/ads/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hy;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/ty;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/ty;->B(Lcom/google/android/gms/internal/ads/ty;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 25
    .line 26
    check-cast v1, Lcom/google/android/gms/internal/ads/ty;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ty;->D(Lcom/google/android/gms/internal/ads/ty;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/py;->A()Lcom/google/android/gms/internal/ads/oy;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 39
    .line 40
    check-cast v2, Lcom/google/android/gms/internal/ads/py;

    .line 41
    .line 42
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/py;->B(Lcom/google/android/gms/internal/ads/py;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 49
    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/py;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/py;->C(Lcom/google/android/gms/internal/ads/py;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 59
    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/ty;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/google/android/gms/internal/ads/py;

    .line 67
    .line 68
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/ty;->C(Lcom/google/android/gms/internal/ads/ty;Lcom/google/android/gms/internal/ads/py;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/google/android/gms/internal/ads/ty;

    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/iy;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hy;->a:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hy;->b:Landroid/os/Looper;

    .line 82
    .line 83
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/iy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/ty;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/iy;->c:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter p1

    .line 89
    :try_start_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/iy;->d:Z

    .line 90
    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/iy;->d:Z

    .line 95
    .line 96
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/iy;->a:Lcom/google/android/gms/internal/ads/xy;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    monitor-exit p1

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw v0
.end method
