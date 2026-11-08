.class public final Lcom/google/android/gms/internal/ads/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:LU0/C;

.field public d:Lcom/google/android/gms/internal/ads/p0;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:J

.field public k:Lcom/google/android/gms/internal/ads/y;

.field public l:Ljava/util/concurrent/Executor;

.field public final synthetic m:Lcom/google/android/gms/internal/ads/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Et;->d(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, LU0/C;

    .line 19
    .line 20
    invoke-direct {p1}, LU0/C;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f;->c:LU0/C;

    .line 24
    .line 25
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f;->h:J

    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/y;->m:Lcom/google/android/gms/internal/ads/kH;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f;->k:Lcom/google/android/gms/internal/ads/y;

    .line 35
    .line 36
    sget-object p1, Lcom/google/android/gms/internal/ads/g;->m:Lcom/google/android/gms/internal/ads/MO;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f;->l:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->d:Lcom/google/android/gms/internal/ads/p0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->d:Lcom/google/android/gms/internal/ads/p0;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rL;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/rL;->h:Lcom/google/android/gms/internal/ads/rL;

    .line 33
    .line 34
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "width must be positive, but is: "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v3, v0, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    if-lez v3, :cond_3

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v3, 0x0

    .line 57
    :goto_0
    invoke-static {v3, v2}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "height must be positive, but is: "

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v0, v0, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-lez v0, :cond_4

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    :cond_4
    invoke-static {v4, v2}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method

.method public final b(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f;->i:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f;->h:J

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 12
    .line 13
    iget v3, v2, Lcom/google/android/gms/internal/ads/g;->l:I

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    iget v3, v2, Lcom/google/android/gms/internal/ads/g;->k:I

    .line 19
    .line 20
    add-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/google/android/gms/internal/ads/g;->k:I

    .line 22
    .line 23
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/s;->a()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/g;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 29
    .line 30
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lcom/google/android/gms/internal/ads/Zn;

    .line 34
    .line 35
    const/16 v6, 0x1a

    .line 36
    .line 37
    invoke-direct {v5, v2, v6}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/ts;->b(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    iput-wide v5, v2, LU0/I;->j:J

    .line 52
    .line 53
    const-wide/16 v5, -0x1

    .line 54
    .line 55
    iput-wide v5, v2, LU0/I;->m:J

    .line 56
    .line 57
    iput-wide v5, v2, LU0/I;->k:J

    .line 58
    .line 59
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/n;->g:J

    .line 60
    .line 61
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 62
    .line 63
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 64
    .line 65
    .line 66
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/g;->l:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rL;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/rL;->h:Lcom/google/android/gms/internal/ads/rL;

    .line 24
    .line 25
    :cond_2
    iget v1, v1, Lcom/google/android/gms/internal/ads/rL;->c:I

    .line 26
    .line 27
    const/4 v2, 0x7

    .line 28
    if-ne v1, v2, :cond_3

    .line 29
    .line 30
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 31
    .line 32
    const/16 v2, 0x22

    .line 33
    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/ads/rL;

    .line 37
    .line 38
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/g;->e:Lcom/google/android/gms/internal/ads/pl;

    .line 46
    .line 47
    check-cast v2, Lcom/google/android/gms/internal/ads/Nr;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Nr;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/ts;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/g;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 55
    .line 56
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->d:Lcom/google/android/gms/internal/ads/d;

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 59
    .line 60
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d;->a()V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Landroid/view/Surface;

    .line 72
    .line 73
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lcom/google/android/gms/internal/ads/Br;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    throw v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Og; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/z;

    .line 85
    .line 86
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/z;-><init>(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/p0;)V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public final d(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/g;->a(Lcom/google/android/gms/internal/ads/g;JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/jK; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/z;

    .line 9
    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/f;->d:Lcom/google/android/gms/internal/ads/p0;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/google/android/gms/internal/ads/K;

    .line 15
    .line 16
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance p4, Lcom/google/android/gms/internal/ads/p0;

    .line 20
    .line 21
    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 22
    .line 23
    .line 24
    move-object p3, p4

    .line 25
    :cond_0
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/z;-><init>(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/p0;)V

    .line 26
    .line 27
    .line 28
    throw p2
.end method

.method public final e(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/Br;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/view/Surface;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/Br;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/Br;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final f(JJJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f;->e:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/f;->f:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/f;->g:J

    return-void
.end method

.method public final g(JZJJLcom/google/android/gms/internal/ads/i;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 9
    .line 10
    .line 11
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/f;->f:J

    .line 12
    .line 13
    sub-long v4, p1, v4

    .line 14
    .line 15
    :try_start_0
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 16
    .line 17
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/f;->e:J

    .line 18
    .line 19
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/f;->c:LU0/C;

    .line 20
    .line 21
    move-wide v7, v4

    .line 22
    move-wide/from16 v9, p4

    .line 23
    .line 24
    move-wide/from16 v11, p6

    .line 25
    .line 26
    move-object/from16 v16, v15

    .line 27
    .line 28
    move/from16 v15, p3

    .line 29
    .line 30
    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/n;->a(JJJJZLU0/C;)I

    .line 31
    .line 32
    .line 33
    move-result v6
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/jK; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v7, 0x4

    .line 35
    if-ne v6, v7, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/f;->g:J

    .line 39
    .line 40
    cmp-long v8, v4, v6

    .line 41
    .line 42
    if-gez v8, :cond_1

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    :cond_1
    move-wide/from16 v4, p4

    .line 47
    .line 48
    move-wide/from16 v6, p6

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/i;->a:Lcom/google/android/gms/internal/ads/MM;

    .line 52
    .line 53
    iget v3, v0, Lcom/google/android/gms/internal/ads/i;->b:I

    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/i;->c:Lcom/google/android/gms/internal/ads/k;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/k;->m0(Lcom/google/android/gms/internal/ads/MM;I)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :goto_0
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/f;->d(JJ)V

    .line 63
    .line 64
    .line 65
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/f;->j:J

    .line 66
    .line 67
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmp-long v0, v4, v6

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget v0, v2, Lcom/google/android/gms/internal/ads/g;->k:I

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 81
    .line 82
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/s;->i:J

    .line 83
    .line 84
    cmp-long v0, v8, v6

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    cmp-long v0, v8, v4

    .line 89
    .line 90
    if-gez v0, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f;->a()V

    .line 94
    .line 95
    .line 96
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/f;->j:J

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    return v3

    .line 100
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v2, Lcom/google/android/gms/internal/ads/z;

    .line 107
    .line 108
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/f;->d:Lcom/google/android/gms/internal/ads/p0;

    .line 109
    .line 110
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/z;-><init>(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/p0;)V

    .line 114
    .line 115
    .line 116
    throw v2
.end method
