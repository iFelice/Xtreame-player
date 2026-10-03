.class public final Lcom/google/android/gms/internal/ads/Ul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/El;

.field public final H:Lcom/google/android/gms/internal/ads/Rl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/Rl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ul;->G:Lcom/google/android/gms/internal/ads/El;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ul;->H:Lcom/google/android/gms/internal/ads/Rl;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ul;->G:Lcom/google/android/gms/internal/ads/El;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    cmpl-float v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_3

    .line 24
    .line 25
    cmpl-float p4, p3, v5

    .line 26
    .line 27
    if-lez p4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-float/2addr p2, p1

    .line 38
    div-float/2addr p2, p3

    .line 39
    mul-float p2, p2, v4

    .line 40
    .line 41
    float-to-int p1, p2

    .line 42
    const/4 v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    cmpg-float p4, p3, v5

    .line 47
    .line 48
    if-gez p4, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sub-float/2addr p2, p1

    .line 59
    div-float/2addr p2, p3

    .line 60
    mul-float p2, p2, v4

    .line 61
    .line 62
    float-to-int p1, p2

    .line 63
    const/4 v3, 0x2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    cmpl-float p3, p4, v5

    .line 68
    .line 69
    if-lez p3, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sub-float/2addr p2, p1

    .line 80
    div-float/2addr p2, p4

    .line 81
    mul-float p2, p2, v4

    .line 82
    .line 83
    float-to-int p1, p2

    .line 84
    const/16 v3, 0x8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    cmpg-float p3, p4, v5

    .line 88
    .line 89
    if-gez p3, :cond_2

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    sub-float/2addr p2, p1

    .line 100
    div-float/2addr p2, p4

    .line 101
    mul-float p2, p2, v4

    .line 102
    .line 103
    float-to-int p1, p2

    .line 104
    const/4 v3, 0x4

    .line 105
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ul;->G:Lcom/google/android/gms/internal/ads/El;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/El;->p()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-ne v3, p2, :cond_5

    .line 112
    .line 113
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ul;->G:Lcom/google/android/gms/internal/ads/El;

    .line 114
    .line 115
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ul;->H:Lcom/google/android/gms/internal/ads/Rl;

    .line 116
    .line 117
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/Rl;->J:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/El;->d(Landroid/widget/FrameLayout;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return v1

    .line 124
    :cond_5
    :goto_1
    monitor-exit p0

    .line 125
    return v1

    .line 126
    :goto_2
    monitor-exit p0

    .line 127
    throw p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method
