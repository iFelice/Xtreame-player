.class public final Lf6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/r0;
.implements Lg4/e;


# instance fields
.field public final synthetic G:I

.field public H:J

.field public I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf6/c;->G:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf6/c;->H:J

    return-void
.end method

.method public constructor <init>(JLz4/d0;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lf6/c;->G:I

    .line 8
    iput-wide p1, p0, Lf6/c;->H:J

    .line 9
    iput-object p3, p0, Lf6/c;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LA0/Y;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lf6/c;->G:I

    .line 12
    iput-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LP3/a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lf6/c;->G:I

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf6/c;->G:I

    iput-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    iput-wide p3, p0, Lf6/c;->H:J

    return-void
.end method

.method public static final l(Lcom/google/android/gms/internal/ads/Fn;Ljava/lang/String;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Tb:Lcom/google/android/gms/internal/ads/J7;

    .line 4
    .line 5
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 6
    .line 7
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "action"

    .line 26
    .line 27
    const-string v1, "lat_init"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Om;->u()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lf6/c;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    check-cast v1, Lf6/c;

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    invoke-virtual {v1, p1}, Lf6/c;->a(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    shl-long/2addr v2, p1

    .line 24
    not-long v2, v2

    .line 25
    and-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lf6/c;->H:J

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lf6/c;

    .line 5
    .line 6
    const/16 v2, 0x40

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-lt p1, v2, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lf6/c;->H:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 22
    .line 23
    shl-long v5, v3, p1

    .line 24
    .line 25
    sub-long/2addr v5, v3

    .line 26
    and-long/2addr v0, v5

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1
    if-ge p1, v2, :cond_2

    .line 33
    .line 34
    iget-wide v0, p0, Lf6/c;->H:J

    .line 35
    .line 36
    shl-long v5, v3, p1

    .line 37
    .line 38
    sub-long/2addr v5, v3

    .line 39
    and-long/2addr v0, v5

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2
    check-cast v0, Lf6/c;

    .line 46
    .line 47
    sub-int/2addr p1, v2

    .line 48
    invoke-virtual {v0, p1}, Lf6/c;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-wide v0, p0, Lf6/c;->H:J

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, p1

    .line 59
    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf6/c;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf6/c;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1}, Lf6/c;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf6/c;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf6/c;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Lf6/c;->d(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 19
    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    shl-long/2addr v2, p1

    .line 23
    and-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method public final e(IZ)V
    .locals 10

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf6/c;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf6/c;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1, p2}, Lf6/c;->e(IZ)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    and-long/2addr v2, v0

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    cmp-long v8, v2, v4

    .line 27
    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    const-wide/16 v3, 0x1

    .line 34
    .line 35
    shl-long v8, v3, p1

    .line 36
    .line 37
    sub-long/2addr v8, v3

    .line 38
    and-long v3, v0, v8

    .line 39
    .line 40
    not-long v8, v8

    .line 41
    and-long/2addr v0, v8

    .line 42
    shl-long/2addr v0, v7

    .line 43
    or-long/2addr v0, v3

    .line 44
    iput-wide v0, p0, Lf6/c;->H:J

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lf6/c;->j(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lf6/c;->a(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    if-nez v2, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lf6/c;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Lf6/c;->c()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lf6/c;

    .line 69
    .line 70
    invoke-virtual {p1, v6, v2}, Lf6/c;->e(IZ)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public final f(Lm0/o0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LA0/Y;

    .line 4
    .line 5
    iget-object v0, v0, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v1, Lf/t;

    .line 8
    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    invoke-direct {v1, v2, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(JZ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LA0/Y;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-wide p1, p0, Lf6/c;->H:J

    .line 15
    .line 16
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LA0/Y;

    .line 19
    .line 20
    iget-object v0, v0, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    new-instance v1, LA0/W;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p2, p3}, LA0/W;-><init>(Lf6/c;JZ)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final h(I)Z
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf6/c;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf6/c;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Lf6/c;->h(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    shl-long v2, v0, p1

    .line 21
    .line 22
    iget-wide v4, p0, Lf6/c;->H:J

    .line 23
    .line 24
    and-long v6, v4, v2

    .line 25
    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    cmp-long v11, v6, v8

    .line 31
    .line 32
    if-eqz v11, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v6, 0x0

    .line 37
    :goto_0
    not-long v7, v2

    .line 38
    and-long/2addr v4, v7

    .line 39
    iput-wide v4, p0, Lf6/c;->H:J

    .line 40
    .line 41
    sub-long/2addr v2, v0

    .line 42
    and-long v0, v4, v2

    .line 43
    .line 44
    not-long v2, v2

    .line 45
    and-long/2addr v2, v4

    .line 46
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->rotateRight(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    or-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lf6/c;->H:J

    .line 52
    .line 53
    iget-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v0, p1

    .line 56
    check-cast v0, Lf6/c;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast p1, Lf6/c;

    .line 61
    .line 62
    invoke-virtual {p1, v10}, Lf6/c;->d(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    const/16 p1, 0x3f

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lf6/c;->j(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lf6/c;

    .line 76
    .line 77
    invoke-virtual {p1, v10}, Lf6/c;->h(I)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    return v6
.end method

.method public final i()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lf6/c;->H:J

    .line 4
    .line 5
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lf6/c;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lf6/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lf6/c;->i()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf6/c;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf6/c;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Lf6/c;->j(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    shl-long/2addr v2, p1

    .line 22
    or-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lf6/c;->H:J

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final k(Landroid/content/Context;Lp3/a;ZLcom/google/android/gms/internal/ads/ge;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Vg;Lcom/google/android/gms/internal/ads/Uw;Lcom/google/android/gms/internal/ads/Fn;Ljava/lang/Long;)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    move-object/from16 v5, p8

    .line 10
    .line 11
    move-object/from16 v6, p9

    .line 12
    .line 13
    move-object/from16 v7, p10

    .line 14
    .line 15
    sget-object v8, Lk3/l;->A:Lk3/l;

    .line 16
    .line 17
    iget-object v9, v8, Lk3/l;->j:LP3/b;

    .line 18
    .line 19
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v9

    .line 26
    iget-wide v11, v1, Lf6/c;->H:J

    .line 27
    .line 28
    sub-long/2addr v9, v11

    .line 29
    const-wide/16 v11, 0x1388

    .line 30
    .line 31
    cmp-long v13, v9, v11

    .line 32
    .line 33
    if-gez v13, :cond_0

    .line 34
    .line 35
    const-string v0, "Not retrying to fetch app settings"

    .line 36
    .line 37
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v9, v8, Lk3/l;->j:LP3/b;

    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v10

    .line 50
    iput-wide v10, v1, Lf6/c;->H:J

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/ge;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/ge;->f:J

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    sub-long/2addr v12, v10

    .line 73
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->Q3:Lcom/google/android/gms/internal/ads/J7;

    .line 74
    .line 75
    sget-object v10, Ll3/q;->d:Ll3/q;

    .line 76
    .line 77
    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 78
    .line 79
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    cmp-long v11, v12, v9

    .line 90
    .line 91
    if-gtz v11, :cond_2

    .line 92
    .line 93
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/ge;->h:Z

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 99
    .line 100
    const-string v0, "Context not provided to fetch application settings"

    .line 101
    .line 102
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const-string v0, "App settings could not be fetched. Required parameters missing"

    .line 120
    .line 121
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_6

    .line 130
    .line 131
    move-object v3, v0

    .line 132
    :cond_6
    iput-object v3, v1, Lf6/c;->I:Ljava/lang/Object;

    .line 133
    .line 134
    const/4 v3, 0x4

    .line 135
    invoke-static {p1, v3}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 140
    .line 141
    .line 142
    iget-object v8, v8, Lk3/l;->p:Lcom/google/android/gms/internal/ads/xc;

    .line 143
    .line 144
    iget-object v9, v1, Lf6/c;->I:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v9, Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v8, v9, v2, v5}, Lcom/google/android/gms/internal/ads/xc;->b(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Uw;)Lcom/google/android/gms/internal/ads/Qa;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string v9, "google.afma.config.fetchAppSettings"

    .line 153
    .line 154
    sget-object v10, Lcom/google/android/gms/internal/ads/Pa;->b:Lcom/google/android/gms/internal/ads/Aa;

    .line 155
    .line 156
    invoke-virtual {v8, v9, v10, v10}, Lcom/google/android/gms/internal/ads/Qa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    const/4 v9, 0x0

    .line 161
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 162
    .line 163
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-nez v11, :cond_7

    .line 171
    .line 172
    const-string v11, "app_id"

    .line 173
    .line 174
    move-object/from16 v12, p5

    .line 175
    .line 176
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto/16 :goto_4

    .line 182
    .line 183
    :cond_7
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-nez v11, :cond_8

    .line 188
    .line 189
    const-string v11, "ad_unit_id"

    .line 190
    .line 191
    move-object/from16 v12, p6

    .line 192
    .line 193
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_2
    const-string v11, "is_init"

    .line 197
    .line 198
    move/from16 v12, p3

    .line 199
    .line 200
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    const-string v11, "pn"

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    const-string v11, "experiment_ids"

    .line 213
    .line 214
    const-string v12, ","

    .line 215
    .line 216
    sget-object v13, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 217
    .line 218
    sget-object v13, Ll3/q;->d:Ll3/q;

    .line 219
    .line 220
    iget-object v13, v13, Ll3/q;->a:LF0/u;

    .line 221
    .line 222
    invoke-virtual {v13}, LF0/u;->b()Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    const-string v11, "js"

    .line 234
    .line 235
    iget-object v2, v2, Lp3/a;->G:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v10, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    :try_start_1
    iget-object v2, v1, Lf6/c;->I:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v2, Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    if-eqz v2, :cond_9

    .line 249
    .line 250
    invoke-static {p1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, v9, v2}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    const-string v2, "version"

    .line 263
    .line 264
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 265
    .line 266
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :catch_1
    :try_start_2
    const-string v0, "Error fetching PackageInfo."

    .line 271
    .line 272
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_9
    :goto_3
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/Sa;->a(Ljava/lang/Object;)LD4/b;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    new-instance v2, Lk3/d;

    .line 280
    .line 281
    invoke-direct {v2, v7, v6, v5, v3}, Lk3/d;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Uw;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 282
    .line 283
    .line 284
    sget-object v8, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 285
    .line 286
    invoke-static {v0, v2, v8}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v4, :cond_a

    .line 291
    .line 292
    move-object v10, v0

    .line 293
    check-cast v10, Lcom/google/android/gms/internal/ads/te;

    .line 294
    .line 295
    invoke-virtual {v10, v4, v8}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 296
    .line 297
    .line 298
    :cond_a
    if-eqz v7, :cond_b

    .line 299
    .line 300
    new-instance v4, Ll/k;

    .line 301
    .line 302
    const/16 v10, 0x13

    .line 303
    .line 304
    invoke-direct {v4, v6, v7, v10, v9}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 305
    .line 306
    .line 307
    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    .line 308
    .line 309
    invoke-virtual {v0, v4, v8}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 310
    .line 311
    .line 312
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->b7:Lcom/google/android/gms/internal/ads/J7;

    .line 313
    .line 314
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 315
    .line 316
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 317
    .line 318
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    const-string v4, "ConfigLoader.maybeFetchNewAppSettings"

    .line 329
    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/J;

    .line 333
    .line 334
    const/4 v6, 0x2

    .line 335
    invoke-direct {v0, v4, v6, v9}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;II)V

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v0, v8}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_c
    invoke-static {v2, v4}, Lf/b;->d0(LD4/b;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :goto_4
    const-string v2, "Error requesting application settings"

    .line 347
    .line 348
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/Ow;->d(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/Ow;

    .line 352
    .line 353
    .line 354
    invoke-interface {v3, v9}, Lcom/google/android/gms/internal/ads/Ow;->e(Z)Lcom/google/android/gms/internal/ads/Ow;

    .line 355
    .line 356
    .line 357
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ow;->zzm()Lcom/google/android/gms/internal/ads/Qw;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/Uw;->b(Lcom/google/android/gms/internal/ads/Qw;)V

    .line 362
    .line 363
    .line 364
    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget v0, p0, Lf6/c;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/bD;

    .line 9
    .line 10
    iget-wide v0, p0, Lf6/c;->H:J

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/common/api/h;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p1, Lcom/google/android/gms/common/api/h;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/gms/common/api/h;->G:Lcom/google/android/gms/common/api/Status;

    .line 27
    .line 28
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->G:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 p1, 0xd

    .line 32
    .line 33
    :goto_0
    iget-wide v0, p0, Lf6/c;->H:J

    .line 34
    .line 35
    iget-object v2, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, La3/b;

    .line 38
    .line 39
    iget-object v2, v2, La3/b;->J:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, LE3/j;

    .line 42
    .line 43
    iget-object v2, v2, LE3/j;->c:LH3/n;

    .line 44
    .line 45
    iget-object v2, v2, LH3/q;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, LH3/p;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v4, p1, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lf6/c;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lf6/c;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lf6/c;->H:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lf6/c;->I:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lf6/c;

    .line 32
    .line 33
    invoke-virtual {v1}, Lf6/c;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "xx"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-wide v1, p0, Lf6/c;->H:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
