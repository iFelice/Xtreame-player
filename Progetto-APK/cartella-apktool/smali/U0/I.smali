.class public final LU0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/view/Surface;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public final o:Ljava/lang/Object;

.field public final p:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    const-string v3, "display"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    if-eq p2, v7, :cond_3

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p2, LU0/f;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v7, LU0/e;

    .line 26
    .line 27
    invoke-direct {v7, v0}, LU0/e;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v7, p2, LU0/f;->a:LU0/e;

    .line 31
    .line 32
    new-instance v7, LU0/e;

    .line 33
    .line 34
    invoke-direct {v7, v0}, LU0/e;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v7, p2, LU0/f;->b:LU0/e;

    .line 38
    .line 39
    iput-wide v5, p2, LU0/f;->d:J

    .line 40
    .line 41
    iput-object p2, p0, LU0/I;->o:Ljava/lang/Object;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    :cond_0
    move-object p2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    new-instance p2, LU0/G;

    .line 56
    .line 57
    invoke-direct {p2, p0, p1}, LU0/G;-><init>(LU0/I;Landroid/hardware/display/DisplayManager;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iput-object p2, p0, LU0/I;->p:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    sget-object v4, LU0/H;->K:LU0/H;

    .line 65
    .line 66
    :cond_2
    iput-object v4, p0, LU0/I;->q:Ljava/lang/Object;

    .line 67
    .line 68
    iput-wide v5, p0, LU0/I;->h:J

    .line 69
    .line 70
    iput-wide v5, p0, LU0/I;->i:J

    .line 71
    .line 72
    iput v2, p0, LU0/I;->c:F

    .line 73
    .line 74
    iput v1, p0, LU0/I;->f:F

    .line 75
    .line 76
    iput v0, p0, LU0/I;->g:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance p2, LU0/f;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v8, LU0/e;

    .line 88
    .line 89
    invoke-direct {v8, v7}, LU0/e;-><init>(I)V

    .line 90
    .line 91
    .line 92
    iput-object v8, p2, LU0/f;->a:LU0/e;

    .line 93
    .line 94
    new-instance v8, LU0/e;

    .line 95
    .line 96
    invoke-direct {v8, v7}, LU0/e;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iput-object v8, p2, LU0/f;->b:LU0/e;

    .line 100
    .line 101
    iput-wide v5, p2, LU0/f;->d:J

    .line 102
    .line 103
    iput-object p2, p0, LU0/I;->o:Ljava/lang/Object;

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    :cond_4
    move-object p2, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    new-instance p2, Lcom/google/android/gms/internal/ads/q;

    .line 118
    .line 119
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/q;-><init>(LU0/I;Landroid/hardware/display/DisplayManager;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iput-object p2, p0, LU0/I;->p:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 123
    .line 124
    if-eqz p2, :cond_6

    .line 125
    .line 126
    sget-object v4, Lcom/google/android/gms/internal/ads/r;->K:Lcom/google/android/gms/internal/ads/r;

    .line 127
    .line 128
    :cond_6
    iput-object v4, p0, LU0/I;->q:Ljava/lang/Object;

    .line 129
    .line 130
    iput-wide v5, p0, LU0/I;->h:J

    .line 131
    .line 132
    iput-wide v5, p0, LU0/I;->i:J

    .line 133
    .line 134
    iput v2, p0, LU0/I;->c:F

    .line 135
    .line 136
    iput v1, p0, LU0/I;->f:F

    .line 137
    .line 138
    iput v0, p0, LU0/I;->g:I

    .line 139
    .line 140
    return-void
.end method

.method public static a(LU0/I;Landroid/view/Display;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    float-to-double v0, p1

    .line 11
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v2, v0

    .line 17
    double-to-long v0, v2

    .line 18
    iput-wide v0, p0, LU0/I;->h:J

    .line 19
    .line 20
    const-wide/16 v2, 0x50

    .line 21
    .line 22
    mul-long v0, v0, v2

    .line 23
    .line 24
    const-wide/16 v2, 0x64

    .line 25
    .line 26
    div-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, LU0/I;->i:J

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    .line 31
    .line 32
    const-string v0, "Unable to query display refresh rate"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    iput-wide v0, p0, LU0/I;->h:J

    .line 43
    .line 44
    iput-wide v0, p0, LU0/I;->i:J

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(LU0/I;Landroid/view/Display;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-double v0, p1

    .line 8
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v2, v0

    .line 14
    double-to-long v0, v2

    .line 15
    iput-wide v0, p0, LU0/I;->h:J

    .line 16
    .line 17
    const-wide/16 v2, 0x50

    .line 18
    .line 19
    mul-long v0, v0, v2

    .line 20
    .line 21
    const-wide/16 v2, 0x64

    .line 22
    .line 23
    div-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, LU0/I;->i:J

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    .line 28
    .line 29
    const-string v0, "Unable to query display refresh rate"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, LU0/I;->h:J

    .line 40
    .line 41
    iput-wide v0, p0, LU0/I;->i:J

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, LU0/I;->g:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget v1, p0, LU0/I;->e:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput v2, p0, LU0/I;->e:F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {v0, v2, v1}, LE1/a;->q(Landroid/view/Surface;FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "VideoFrameReleaseHelper"

    .line 34
    .line 35
    const-string v2, "Failed to call Surface.setFrameRate"

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_9

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LU0/I;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, LU0/f;

    .line 16
    .line 17
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 18
    .line 19
    invoke-virtual {v2}, LU0/e;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 28
    .line 29
    invoke-virtual {v2}, LU0/e;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 36
    .line 37
    iget-wide v4, v2, LU0/e;->e:J

    .line 38
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    cmp-long v8, v4, v6

    .line 42
    .line 43
    if-nez v8, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-wide v6, v2, LU0/e;->f:J

    .line 47
    .line 48
    div-long/2addr v6, v4

    .line 49
    :goto_0
    long-to-double v4, v6

    .line 50
    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr v6, v4

    .line 56
    double-to-float v2, v6

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget v2, p0, LU0/I;->c:F

    .line 62
    .line 63
    :goto_1
    iget v4, p0, LU0/I;->d:F

    .line 64
    .line 65
    cmpl-float v5, v2, v4

    .line 66
    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    cmpl-float v5, v2, v3

    .line 71
    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    cmpl-float v3, v4, v3

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    iget-object v1, v0, LU0/f;->a:LU0/e;

    .line 79
    .line 80
    invoke-virtual {v1}, LU0/e;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iget-object v1, v0, LU0/f;->a:LU0/e;

    .line 87
    .line 88
    invoke-virtual {v1}, LU0/e;->a()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iget-object v0, v0, LU0/f;->a:LU0/e;

    .line 95
    .line 96
    iget-wide v0, v0, LU0/e;->f:J

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :goto_2
    const-wide v3, 0x12a05f200L

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    cmp-long v5, v0, v3

    .line 110
    .line 111
    if-ltz v5, :cond_6

    .line 112
    .line 113
    const v0, 0x3ca3d70a    # 0.02f

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    .line 119
    :goto_3
    iget v1, p0, LU0/I;->d:F

    .line 120
    .line 121
    sub-float v1, v2, v1

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    cmpl-float v0, v1, v0

    .line 128
    .line 129
    if-ltz v0, :cond_9

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    if-eqz v5, :cond_8

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    iget v0, v0, LU0/f;->e:I

    .line 136
    .line 137
    if-lt v0, v1, :cond_9

    .line 138
    .line 139
    :goto_4
    iput v2, p0, LU0/I;->d:F

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, LU0/I;->d(Z)V

    .line 143
    .line 144
    .line 145
    :cond_9
    :goto_5
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget v1, p0, LU0/I;->g:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-boolean v1, p0, LU0/I;->a:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, LU0/I;->d:F

    .line 24
    .line 25
    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    .line 27
    cmpl-float v3, v1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v3, p0, LU0/I;->f:F

    .line 32
    .line 33
    mul-float v1, v1, v3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    iget p1, p0, LU0/I;->e:F

    .line 40
    .line 41
    cmpl-float p1, p1, v1

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iput v1, p0, LU0/I;->e:F

    .line 47
    .line 48
    cmpl-float p1, v1, v2

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    :goto_1
    :try_start_0
    invoke-static {v0, v1, p1}, LE1/a;->q(Landroid/view/Surface;FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p1

    .line 60
    const-string v0, "VideoFrameReleaseHelper"

    .line 61
    .line 62
    const-string v1, "Failed to call Surface.setFrameRate"

    .line 63
    .line 64
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, LU0/I;->g:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget v1, p0, LU0/I;->e:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput v2, p0, LU0/I;->e:F

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/p;->a(Landroid/view/Surface;F)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_8

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LU0/I;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, LU0/f;

    .line 16
    .line 17
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 18
    .line 19
    invoke-virtual {v2}, LU0/e;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 28
    .line 29
    invoke-virtual {v2}, LU0/e;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, v0, LU0/f;->a:LU0/e;

    .line 36
    .line 37
    iget-wide v4, v2, LU0/e;->e:J

    .line 38
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    cmp-long v8, v4, v6

    .line 42
    .line 43
    if-nez v8, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-wide v6, v2, LU0/e;->f:J

    .line 47
    .line 48
    div-long/2addr v6, v4

    .line 49
    :goto_0
    long-to-double v4, v6

    .line 50
    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr v6, v4

    .line 56
    double-to-float v2, v6

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget v2, p0, LU0/I;->c:F

    .line 62
    .line 63
    :goto_1
    iget v4, p0, LU0/I;->d:F

    .line 64
    .line 65
    cmpl-float v5, v2, v4

    .line 66
    .line 67
    if-eqz v5, :cond_8

    .line 68
    .line 69
    cmpl-float v5, v2, v3

    .line 70
    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    cmpl-float v3, v4, v3

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    iget-object v1, v0, LU0/f;->a:LU0/e;

    .line 78
    .line 79
    invoke-virtual {v1}, LU0/e;->f()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/high16 v3, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iget-object v1, v0, LU0/f;->a:LU0/e;

    .line 88
    .line 89
    invoke-virtual {v1}, LU0/e;->f()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-object v0, v0, LU0/f;->a:LU0/e;

    .line 96
    .line 97
    iget-wide v0, v0, LU0/e;->f:J

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :goto_2
    const-wide v4, 0x12a05f200L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    cmp-long v6, v0, v4

    .line 111
    .line 112
    if-ltz v6, :cond_5

    .line 113
    .line 114
    const v3, 0x3ca3d70a    # 0.02f

    .line 115
    .line 116
    .line 117
    :cond_5
    iget v0, p0, LU0/I;->d:F

    .line 118
    .line 119
    sub-float v0, v2, v0

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    cmpl-float v0, v0, v3

    .line 126
    .line 127
    if-ltz v0, :cond_8

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    if-nez v5, :cond_7

    .line 131
    .line 132
    iget v0, v0, LU0/f;->e:I

    .line 133
    .line 134
    if-lt v0, v1, :cond_8

    .line 135
    .line 136
    :cond_7
    :goto_3
    iput v2, p0, LU0/I;->d:F

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, LU0/I;->h(Z)V

    .line 140
    .line 141
    .line 142
    :cond_8
    :goto_4
    return-void
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, LU0/I;->b:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget v1, p0, LU0/I;->g:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, LU0/I;->a:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, LU0/I;->d:F

    .line 24
    .line 25
    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    .line 27
    cmpl-float v3, v1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v2, p0, LU0/I;->f:F

    .line 32
    .line 33
    mul-float v2, v2, v1

    .line 34
    .line 35
    :cond_1
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget p1, p0, LU0/I;->e:F

    .line 38
    .line 39
    cmpl-float p1, p1, v2

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    :cond_2
    iput v2, p0, LU0/I;->e:F

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/p;->a(Landroid/view/Surface;F)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method
