.class public abstract LD/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_9

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 16
    .line 17
    double-to-int p3, p3

    .line 18
    invoke-direct {v1, p1, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 p3, 0x2

    .line 27
    const/4 p4, 0x1

    .line 28
    if-ge p1, p2, :cond_2

    .line 29
    .line 30
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, LD0/a;->a(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2, v1}, LD0/a;->u(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x1

    .line 50
    :goto_1
    if-ne p0, p4, :cond_8

    .line 51
    .line 52
    sget-object p1, Lcom/bumptech/glide/d;->c:Ljava/lang/Boolean;

    .line 53
    .line 54
    if-nez p1, :cond_8

    .line 55
    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 p2, 0x23

    .line 59
    .line 60
    if-lt p1, p2, :cond_4

    .line 61
    .line 62
    :cond_3
    const/4 p4, 0x0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-static {v0}, LD/g;->b(Z)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p4}, LD/g;->b(Z)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-nez p2, :cond_6

    .line 76
    .line 77
    if-eq p1, p3, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    if-ne p1, p3, :cond_7

    .line 81
    .line 82
    if-eq p2, p3, :cond_3

    .line 83
    .line 84
    :cond_7
    :goto_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sput-object p1, Lcom/bumptech/glide/d;->c:Ljava/lang/Boolean;

    .line 89
    .line 90
    if-eqz p4, :cond_8

    .line 91
    .line 92
    return v0

    .line 93
    :cond_8
    return p0

    .line 94
    :cond_9
    :goto_3
    return v0
.end method

.method public static b(Z)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lm0/s;

    .line 3
    .line 4
    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "video/avc"

    .line 8
    .line 9
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v1, Lm0/s;->n:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Lm0/t;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v2, Lm0/t;->o:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    sget-object v1, LK0/s;->g:LC0/g;

    .line 25
    .line 26
    invoke-static {v1, v2, p0, v0}, LK0/z;->f(LK0/s;Lm0/t;ZZ)Lz4/d0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget v2, p0, Lz4/d0;->J:I

    .line 32
    .line 33
    if-ge v1, v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, LK0/o;

    .line 40
    .line 41
    iget-object v2, v2, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, LK0/o;

    .line 50
    .line 51
    iget-object v2, v2, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    new-instance p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 72
    .line 73
    const/16 v1, 0x3c

    .line 74
    .line 75
    const/16 v3, 0x500

    .line 76
    .line 77
    const/16 v4, 0x2d0

    .line 78
    .line 79
    invoke-direct {p0, v3, v4, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v1, v3, :cond_1

    .line 88
    .line 89
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, LD0/a;->a(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3, p0}, LD0/a;->u(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    .line 98
    .line 99
    .line 100
    move-result v3
    :try_end_0
    .catch LK0/v; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-eqz v3, :cond_0

    .line 102
    .line 103
    const/4 p0, 0x2

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 p0, 0x1

    .line 109
    :goto_2
    return p0

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    :cond_3
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 1

    .line 1
    const-class v0, Landroid/app/AppOpsManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public static e()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static f(IIII)Landroid/graphics/Insets;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h(Landroid/app/Notification$Builder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i(Landroid/app/Notification$Builder;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static j(Landroid/app/Notification$Action$Builder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 2
    .line 3
    .line 4
    return-void
.end method
