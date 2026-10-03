.class public final Lc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/j;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:I

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lc/g;->G:I

    const/16 v1, 0xa

    .line 2
    invoke-direct {p0, v1, v0}, Lc/g;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 3
    iput p2, p0, Lc/g;->G:I

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p2, p1, [J

    iput-object p2, p0, Lc/g;->J:Ljava/lang/Object;

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lc/g;->K:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lc/g;->H:I

    add-int/lit8 p1, p1, 0x1

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lc/g;->K:Ljava/lang/Object;

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/E1;

    iput-object p1, p0, Lc/g;->J:Ljava/lang/Object;

    iput v1, p0, Lc/g;->I:I

    return-void

    .line 13
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array p1, p1, [Lo1/q;

    iput-object p1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 15
    iput v1, p0, Lc/g;->I:I

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;ILs2/e;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 17
    iput v0, p0, Lc/g;->G:I

    .line 18
    iput p1, p0, Lc/g;->H:I

    iput-object p2, p0, Lc/g;->J:Ljava/lang/Object;

    iput p3, p0, Lc/g;->I:I

    iput-object p4, p0, Lc/g;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILp0/J;I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 21
    iput v0, p0, Lc/g;->G:I

    .line 22
    iput p1, p0, Lc/g;->H:I

    .line 23
    iput-object p2, p0, Lc/g;->J:Ljava/lang/Object;

    .line 24
    iput p3, p0, Lc/g;->I:I

    .line 25
    new-instance p1, Lp0/E;

    invoke-direct {p1}, Lp0/E;-><init>()V

    iput-object p1, p0, Lc/g;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[F[FI)V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lc/g;->G:I

    .line 44
    iput p1, p0, Lc/g;->H:I

    .line 45
    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 46
    iput-object p2, p0, Lc/g;->J:Ljava/lang/Object;

    .line 47
    iput-object p3, p0, Lc/g;->K:Ljava/lang/Object;

    .line 48
    iput p4, p0, Lc/g;->I:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lc/g;->G:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/g;->J:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lc/g;->I:I

    .line 30
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 31
    sget-object v0, Lz/r;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 33
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iget v3, p0, Lc/g;->H:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lc/g;->H:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 35
    iget v3, p0, Lc/g;->I:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lc/g;->I:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lc/g;->I:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lc/g;->I:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 38
    const-string v3, "layout"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    new-instance v2, Lz/o;

    invoke-direct {v2}, Lz/o;-><init>()V

    iput-object v2, p0, Lc/g;->K:Ljava/lang/Object;

    .line 40
    iget v3, p0, Lc/g;->I:I

    invoke-virtual {v2, p1, v3}, Lz/o;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lc/g;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 50
    iput v0, p0, Lc/g;->G:I

    .line 51
    iget-object v1, p1, Lc/g;->J:Ljava/lang/Object;

    check-cast v1, [F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    .line 52
    iput v2, p0, Lc/g;->H:I

    .line 53
    invoke-static {v1}, Lp0/b;->l([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 54
    iget-object v1, p1, Lc/g;->K:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v1}, Lp0/b;->l([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/g;->K:Ljava/lang/Object;

    .line 55
    iget p1, p1, Lc/g;->I:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x4

    .line 56
    iput p1, p0, Lc/g;->I:I

    goto :goto_0

    .line 57
    :cond_0
    iput v0, p0, Lc/g;->I:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 58
    iput p1, p0, Lc/g;->I:I

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;[BI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lc/g;->G:I

    iput-object p1, p0, Lc/g;->K:Ljava/lang/Object;

    iput-object p2, p0, Lc/g;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll/d0;IILjava/lang/ref/WeakReference;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lc/g;->G:I

    .line 61
    iput-object p1, p0, Lc/g;->K:Ljava/lang/Object;

    iput p2, p0, Lc/g;->H:I

    iput p3, p0, Lc/g;->I:I

    iput-object p4, p0, Lc/g;->J:Ljava/lang/Object;

    return-void
.end method

.method private final declared-synchronized o()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/Gy;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Gy;->b:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Gy;->a:Lcom/google/android/gms/internal/ads/Iy;

    .line 11
    .line 12
    iget-object v1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, [B

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Iy;->zzj([B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/Gy;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Gy;->a:Lcom/google/android/gms/internal/ads/Iy;

    .line 24
    .line 25
    iget v1, p0, Lc/g;->H:I

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Iy;->zzi(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/Gy;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Gy;->a:Lcom/google/android/gms/internal/ads/Iy;

    .line 35
    .line 36
    iget v1, p0, Lc/g;->I:I

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Iy;->zzg(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/gms/internal/ads/Gy;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Gy;->a:Lcom/google/android/gms/internal/ads/Iy;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Iy;->zzh([I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/google/android/gms/internal/ads/Gy;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Gy;->a:Lcom/google/android/gms/internal/ads/Iy;

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Iy;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_0
    :try_start_1
    const-string v1, "GASS"

    .line 69
    .line 70
    const-string v2, "Clearcut log failed"

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    throw v0
.end method

.method private final declared-synchronized p()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, LP0/j;

    .line 5
    .line 6
    iget-boolean v1, v0, LP0/j;->G:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/pal/D2;

    .line 13
    .line 14
    iget-object v1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, [B

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/D2;->zzj([B)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, LP0/j;

    .line 24
    .line 25
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/android/gms/internal/pal/D2;

    .line 28
    .line 29
    iget v1, p0, Lc/g;->H:I

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/D2;->zzi(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, LP0/j;

    .line 37
    .line 38
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/pal/D2;

    .line 41
    .line 42
    iget v1, p0, Lc/g;->I:I

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/D2;->zzg(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, LP0/j;

    .line 50
    .line 51
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/google/android/gms/internal/pal/D2;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/D2;->zzh([I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, LP0/j;

    .line 62
    .line 63
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/gms/internal/pal/D2;

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/internal/pal/D2;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_0
    :try_start_1
    const-string v1, "GASS"

    .line 79
    .line 80
    const-string v2, "Clearcut log failed"

    .line 81
    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p0

    .line 88
    throw v0
.end method


# virtual methods
.method public final a(LW0/t;J)LW0/i;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget v1, v0, Lc/g;->I:I

    .line 8
    .line 9
    int-to-long v1, v1

    .line 10
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    sub-long/2addr v3, v5

    .line 15
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    long-to-int v2, v1

    .line 20
    iget-object v1, v0, Lc/g;->K:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lp0/E;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lp0/E;->I(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lc/g;->K:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lp0/E;

    .line 30
    .line 31
    iget-object v1, v1, Lp0/E;->a:[B

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    invoke-interface {v4, v3, v1, v2}, LW0/t;->c(I[BI)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lc/g;->K:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lp0/E;

    .line 42
    .line 43
    iget v2, v1, Lp0/E;->c:I

    .line 44
    .line 45
    const-wide/16 v3, -0x1

    .line 46
    .line 47
    move-wide v9, v3

    .line 48
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/16 v12, 0xbc

    .line 58
    .line 59
    if-lt v11, v12, :cond_1

    .line 60
    .line 61
    iget-object v11, v1, Lp0/E;->a:[B

    .line 62
    .line 63
    iget v12, v1, Lp0/E;->b:I

    .line 64
    .line 65
    :goto_1
    if-ge v12, v2, :cond_0

    .line 66
    .line 67
    aget-byte v15, v11, v12

    .line 68
    .line 69
    const/16 v7, 0x47

    .line 70
    .line 71
    if-eq v15, v7, :cond_0

    .line 72
    .line 73
    add-int/lit8 v12, v12, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    add-int/lit16 v7, v12, 0xbc

    .line 77
    .line 78
    if-le v7, v2, :cond_2

    .line 79
    .line 80
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget v3, v0, Lc/g;->H:I

    .line 87
    .line 88
    invoke-static {v12, v3, v1}, Lp0/b;->D(IILp0/E;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    cmp-long v8, v3, v15

    .line 98
    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    iget-object v8, v0, Lc/g;->J:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v8, Lp0/J;

    .line 104
    .line 105
    invoke-virtual {v8, v3, v4}, Lp0/J;->b(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    cmp-long v8, v3, p2

    .line 110
    .line 111
    if-lez v8, :cond_4

    .line 112
    .line 113
    cmp-long v1, v13, v15

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    new-instance v7, LW0/i;

    .line 118
    .line 119
    const/4 v2, -0x1

    .line 120
    move-object v1, v7

    .line 121
    invoke-direct/range {v1 .. v6}, LW0/i;-><init>(IJJ)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    add-long/2addr v5, v9

    .line 126
    invoke-static {v5, v6}, LW0/i;->a(J)LW0/i;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    const-wide/32 v8, 0x186a0

    .line 132
    .line 133
    .line 134
    add-long/2addr v8, v3

    .line 135
    cmp-long v10, v8, p2

    .line 136
    .line 137
    if-lez v10, :cond_5

    .line 138
    .line 139
    int-to-long v1, v12

    .line 140
    add-long/2addr v5, v1

    .line 141
    invoke-static {v5, v6}, LW0/i;->a(J)LW0/i;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    int-to-long v8, v12

    .line 147
    move-wide v13, v3

    .line 148
    move-wide v9, v8

    .line 149
    :cond_6
    invoke-virtual {v1, v7}, Lp0/E;->L(I)V

    .line 150
    .line 151
    .line 152
    int-to-long v3, v7

    .line 153
    goto :goto_0

    .line 154
    :goto_2
    cmp-long v7, v13, v1

    .line 155
    .line 156
    if-eqz v7, :cond_7

    .line 157
    .line 158
    add-long v15, v5, v3

    .line 159
    .line 160
    new-instance v7, LW0/i;

    .line 161
    .line 162
    const/4 v12, -0x2

    .line 163
    move-object v11, v7

    .line 164
    invoke-direct/range {v11 .. v16}, LW0/i;-><init>(IJJ)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    sget-object v7, LW0/i;->d:LW0/i;

    .line 169
    .line 170
    :goto_3
    return-object v7
.end method

.method public final declared-synchronized b(Ljava/lang/Object;J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lc/g;->I:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lc/g;->H:I

    .line 7
    .line 8
    add-int/2addr v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    rem-int/2addr v1, v0

    .line 17
    iget-object v0, p0, Lc/g;->J:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, [J

    .line 20
    .line 21
    aget-wide v1, v0, v1

    .line 22
    .line 23
    cmp-long v0, p2, v1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lc/g;->f()V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lc/g;->g()V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lc/g;->H:I

    .line 34
    .line 35
    iget v1, p0, Lc/g;->I:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    iget-object v2, p0, Lc/g;->K:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, [Ljava/lang/Object;

    .line 42
    .line 43
    array-length v3, v3

    .line 44
    rem-int/2addr v0, v3

    .line 45
    iget-object v3, p0, Lc/g;->J:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, [J

    .line 48
    .line 49
    aput-wide p2, v3, v0

    .line 50
    .line 51
    check-cast v2, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v2, v0

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    iput v1, p0, Lc/g;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, LF/l;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x3

    .line 14
    invoke-direct {v1, p0, v3, v2}, LF/l;-><init>(Ljava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lf/t;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/E;

    .line 4
    .line 5
    sget-object v1, Lp0/M;->b:[B

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v2, v1

    .line 11
    invoke-virtual {v0, v2, v1}, Lp0/E;->J(I[B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lc/g;->H:I

    .line 4
    .line 5
    iput v0, p0, Lc/g;->I:I

    .line 6
    .line 7
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    iget v1, p0, Lc/g;->I:I

    .line 7
    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    new-array v2, v1, [J

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    iget v3, p0, Lc/g;->H:I

    .line 18
    .line 19
    sub-int/2addr v0, v3

    .line 20
    iget-object v4, p0, Lc/g;->J:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, [J

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lc/g;->K:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, [Ljava/lang/Object;

    .line 31
    .line 32
    iget v4, p0, Lc/g;->H:I

    .line 33
    .line 34
    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lc/g;->H:I

    .line 38
    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    iget-object v4, p0, Lc/g;->J:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, [J

    .line 44
    .line 45
    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lc/g;->K:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, [Ljava/lang/Object;

    .line 51
    .line 52
    iget v4, p0, Lc/g;->H:I

    .line 53
    .line 54
    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object v2, p0, Lc/g;->J:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v1, p0, Lc/g;->K:Ljava/lang/Object;

    .line 60
    .line 61
    iput v5, p0, Lc/g;->H:I

    .line 62
    .line 63
    return-void
.end method

.method public final h(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lc/g;->H:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lc/g;->I:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-static {p1, v0, v1}, Ll/c0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ll/d0;

    .line 28
    .line 29
    iget-object v1, p0, Lc/g;->J:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    iget-boolean v2, v0, Ll/d0;->m:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iput-object p1, v0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget v2, v0, Ll/d0;->j:I

    .line 54
    .line 55
    new-instance v3, Ll/Y;

    .line 56
    .line 57
    invoke-direct {v3, v0, v1, p1, v2}, Ll/Y;-><init>(Ll/d0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget v0, v0, Ll/d0;->j:I

    .line 65
    .line 66
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final i(JZ)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, 0x7fffffffffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    :goto_0
    iget v3, p0, Lc/g;->I:I

    .line 8
    .line 9
    if-lez v3, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lc/g;->J:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, [J

    .line 14
    .line 15
    iget v4, p0, Lc/g;->H:I

    .line 16
    .line 17
    aget-wide v4, v3, v4

    .line 18
    .line 19
    sub-long v3, p1, v4

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-gez v7, :cond_0

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    neg-long v5, v3

    .line 30
    cmp-long v7, v5, v1

    .line 31
    .line 32
    if-ltz v7, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lc/g;->l()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-wide v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return-object v0
.end method

.method public final declared-synchronized j()Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lc/g;->I:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lc/g;->l()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized k(J)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lc/g;->i(JZ)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lc/g;->I:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lc/g;->K:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, [Ljava/lang/Object;

    .line 16
    .line 17
    iget v3, p0, Lc/g;->H:I

    .line 18
    .line 19
    aget-object v2, v2, v3

    .line 20
    .line 21
    move-object v4, v0

    .line 22
    check-cast v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v5, v4, v3

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    check-cast v0, [Ljava/lang/Object;

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    rem-int/2addr v3, v0

    .line 32
    iput v3, p0, Lc/g;->H:I

    .line 33
    .line 34
    iget v0, p0, Lc/g;->I:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, p0, Lc/g;->I:I

    .line 38
    .line 39
    return-object v2
.end method

.method public final declared-synchronized m()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lc/g;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lc/g;->G:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lc/g;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lc/g;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    throw v0

    .line 21
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
