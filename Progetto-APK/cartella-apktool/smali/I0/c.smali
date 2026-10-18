.class public final LI0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/w;
.implements LS0/h;


# static fields
.field public static final U:LN/i;


# instance fields
.field public final G:LH0/c;

.field public final H:LI0/s;

.field public final I:LU4/b;

.field public final J:Ljava/util/HashMap;

.field public final K:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public L:LO0/D;

.field public M:LS0/m;

.field public N:Landroid/os/Handler;

.field public O:LI0/v;

.field public P:LI0/o;

.field public Q:Landroid/net/Uri;

.field public R:LI0/l;

.field public S:Z

.field public T:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LN/i;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, LN/i;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LI0/c;->U:LN/i;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LH0/c;LU4/b;LI0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI0/c;->G:LH0/c;

    .line 5
    .line 6
    iput-object p3, p0, LI0/c;->H:LI0/s;

    .line 7
    .line 8
    iput-object p2, p0, LI0/c;->I:LU4/b;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LI0/c;->J:Ljava/util/HashMap;

    .line 23
    .line 24
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide p1, p0, LI0/c;->T:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)LI0/l;
    .locals 4

    .line 1
    iget-object v0, p0, LI0/c;->J:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, LI0/b;

    .line 8
    .line 9
    iget-object v1, v1, LI0/b;->J:LI0/l;

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    if-eqz p2, :cond_5

    .line 14
    .line 15
    iget-object p2, p0, LI0/c;->Q:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_3

    .line 22
    .line 23
    iget-object p2, p0, LI0/c;->P:LI0/o;

    .line 24
    .line 25
    iget-object p2, p2, LI0/o;->e:Ljava/util/List;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_3

    .line 33
    .line 34
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, LI0/n;

    .line 39
    .line 40
    iget-object v3, v3, LI0/n;->a:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, LI0/c;->R:LI0/l;

    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    iget-boolean p2, p2, LI0/l;->o:Z

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iput-object p1, p0, LI0/c;->Q:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, LI0/b;

    .line 64
    .line 65
    iget-object v2, p2, LI0/b;->J:LI0/l;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget-boolean v3, v2, LI0/l;->o:Z

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iput-object v2, p0, LI0/c;->R:LI0/l;

    .line 74
    .line 75
    iget-object p2, p0, LI0/c;->O:LI0/v;

    .line 76
    .line 77
    check-cast p2, LH0/o;

    .line 78
    .line 79
    invoke-virtual {p2, v2}, LH0/o;->u(LI0/l;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, LI0/c;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p2, v2}, LI0/b;->f(Landroid/net/Uri;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, LI0/b;

    .line 99
    .line 100
    iget-object p2, p1, LI0/b;->J:LI0/l;

    .line 101
    .line 102
    iget-boolean v0, p1, LI0/b;->Q:Z

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p1, LI0/b;->Q:Z

    .line 109
    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    iget-boolean p2, p2, LI0/l;->o:Z

    .line 113
    .line 114
    if-nez p2, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1, v0}, LI0/b;->d(Z)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, LI0/c;->R:LI0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, LI0/l;->v:LI0/k;

    .line 6
    .line 7
    iget-boolean v1, v1, LI0/k;->e:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, LI0/l;->t:Lz4/J;

    .line 12
    .line 13
    check-cast v0, Lz4/i0;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, LI0/h;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-wide v1, v0, LI0/h;->b:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "_HLS_msn"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iget v0, v0, LI0/h;->c:I

    .line 40
    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    const-string v1, "_HLS_part"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_1
    return-object p1
.end method

.method public final c(LS0/j;JJZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LS0/p;

    .line 4
    .line 5
    new-instance v3, LO0/p;

    .line 6
    .line 7
    iget-wide v4, v1, LS0/p;->G:J

    .line 8
    .line 9
    iget-object v1, v1, LS0/p;->J:Ls0/M;

    .line 10
    .line 11
    iget-object v2, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 12
    .line 13
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 14
    .line 15
    move-wide/from16 v4, p4

    .line 16
    .line 17
    invoke-direct {v3, v1, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, LI0/c;->I:LU4/b;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, LI0/c;->L:LO0/D;

    .line 26
    .line 27
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, -0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    invoke-virtual/range {v2 .. v12}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final d(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, LI0/c;->J:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, LI0/b;

    .line 8
    .line 9
    iget-object v0, p1, LI0/b;->J:LI0/l;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, p1, LI0/b;->J:LI0/l;

    .line 20
    .line 21
    iget-wide v4, v0, LI0/l;->u:J

    .line 22
    .line 23
    invoke-static {v4, v5}, Lp0/M;->e0(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x7530

    .line 28
    .line 29
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-object v0, p1, LI0/b;->J:LI0/l;

    .line 34
    .line 35
    iget-boolean v6, v0, LI0/l;->o:Z

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    iget v0, v0, LI0/l;->d:I

    .line 42
    .line 43
    if-eq v0, v6, :cond_1

    .line 44
    .line 45
    if-eq v0, v7, :cond_1

    .line 46
    .line 47
    iget-wide v8, p1, LI0/b;->K:J

    .line 48
    .line 49
    add-long/2addr v8, v4

    .line 50
    cmp-long p1, v8, v2

    .line 51
    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 v1, 0x1

    .line 55
    :cond_2
    :goto_0
    return v1
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 4

    .line 1
    check-cast p1, LS0/p;

    .line 2
    .line 3
    new-instance p2, LO0/p;

    .line 4
    .line 5
    iget-wide v0, p1, LS0/p;->G:J

    .line 6
    .line 7
    iget-object p3, p1, LS0/p;->J:Ls0/M;

    .line 8
    .line 9
    iget-object v0, p3, Ls0/M;->c:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object p3, p3, Ls0/M;->d:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {p2, p3, p4, p5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, LI0/c;->I:LU4/b;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    instance-of p3, p6, Lm0/P;

    .line 22
    .line 23
    const/4 p4, 0x1

    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    instance-of p3, p6, Ljava/io/FileNotFoundException;

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    instance-of p3, p6, Ls0/w;

    .line 36
    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    instance-of p3, p6, LS0/l;

    .line 40
    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    sget p3, Ls0/j;->H:I

    .line 44
    .line 45
    move-object p3, p6

    .line 46
    :goto_0
    if-eqz p3, :cond_1

    .line 47
    .line 48
    instance-of p5, p3, Ls0/j;

    .line 49
    .line 50
    if-eqz p5, :cond_0

    .line 51
    .line 52
    move-object p5, p3

    .line 53
    check-cast p5, Ls0/j;

    .line 54
    .line 55
    iget p5, p5, Ls0/j;->G:I

    .line 56
    .line 57
    const/16 v2, 0x7d8

    .line 58
    .line 59
    if-ne p5, v2, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sub-int/2addr p7, p4

    .line 68
    mul-int/lit16 p7, p7, 0x3e8

    .line 69
    .line 70
    const/16 p3, 0x1388

    .line 71
    .line 72
    invoke-static {p7, p3}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    int-to-long v2, p3

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    move-wide v2, v0

    .line 79
    :goto_2
    const/4 p3, 0x0

    .line 80
    cmp-long p5, v2, v0

    .line 81
    .line 82
    if-nez p5, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    const/4 p4, 0x0

    .line 86
    :goto_3
    iget-object p5, p0, LI0/c;->L:LO0/D;

    .line 87
    .line 88
    iget p1, p1, LS0/p;->I:I

    .line 89
    .line 90
    invoke-virtual {p5, p2, p1, p6, p4}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 91
    .line 92
    .line 93
    if-eqz p4, :cond_4

    .line 94
    .line 95
    sget-object p1, LS0/m;->L:LS0/g;

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    invoke-static {v2, v3, p3}, LS0/m;->c(JZ)LS0/g;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_4
    return-object p1
.end method

.method public final o(LS0/j;JJ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, LS0/p;

    .line 6
    .line 7
    iget-object v2, v1, LS0/p;->L:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, LI0/p;

    .line 10
    .line 11
    instance-of v3, v2, LI0/l;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v2, LI0/p;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v5, LI0/o;->n:LI0/o;

    .line 18
    .line 19
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    new-instance v4, Lm0/s;

    .line 24
    .line 25
    invoke-direct {v4}, Lm0/s;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "0"

    .line 29
    .line 30
    iput-object v5, v4, Lm0/s;->a:Ljava/lang/String;

    .line 31
    .line 32
    const-string v5, "application/x-mpegURL"

    .line 33
    .line 34
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v4, Lm0/s;->m:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v8, Lm0/t;

    .line 41
    .line 42
    invoke-direct {v8, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, LI0/n;

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    move-object v6, v4

    .line 52
    invoke-direct/range {v6 .. v12}, LI0/n;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v16

    .line 59
    new-instance v4, LI0/o;

    .line 60
    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v17

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v18

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v19

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v20

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v24

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v25

    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    const-string v14, ""

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    move-object v13, v4

    .line 98
    invoke-direct/range {v13 .. v25}, LI0/o;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lm0/t;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move-object v4, v2

    .line 103
    check-cast v4, LI0/o;

    .line 104
    .line 105
    :goto_0
    iput-object v4, v0, LI0/c;->P:LI0/o;

    .line 106
    .line 107
    iget-object v5, v4, LI0/o;->e:Ljava/util/List;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, LI0/n;

    .line 115
    .line 116
    iget-object v5, v5, LI0/n;->a:Landroid/net/Uri;

    .line 117
    .line 118
    iput-object v5, v0, LI0/c;->Q:Landroid/net/Uri;

    .line 119
    .line 120
    iget-object v5, v0, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    .line 122
    new-instance v7, LI0/a;

    .line 123
    .line 124
    invoke-direct {v7, v0}, LI0/a;-><init>(LI0/c;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v4, v4, LI0/o;->d:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    const/4 v7, 0x0

    .line 137
    :goto_1
    if-ge v7, v5, :cond_1

    .line 138
    .line 139
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Landroid/net/Uri;

    .line 144
    .line 145
    new-instance v9, LI0/b;

    .line 146
    .line 147
    invoke-direct {v9, v0, v8}, LI0/b;-><init>(LI0/c;Landroid/net/Uri;)V

    .line 148
    .line 149
    .line 150
    iget-object v10, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    new-instance v9, LO0/p;

    .line 159
    .line 160
    iget-object v1, v1, LS0/p;->J:Ls0/M;

    .line 161
    .line 162
    iget-object v4, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 163
    .line 164
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 165
    .line 166
    move-wide/from16 v4, p4

    .line 167
    .line 168
    invoke-direct {v9, v1, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 172
    .line 173
    iget-object v4, v0, LI0/c;->Q:Landroid/net/Uri;

    .line 174
    .line 175
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, LI0/b;

    .line 180
    .line 181
    if-eqz v3, :cond_2

    .line 182
    .line 183
    check-cast v2, LI0/l;

    .line 184
    .line 185
    invoke-virtual {v1, v2, v9}, LI0/b;->g(LI0/l;LO0/p;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {v1, v6}, LI0/b;->d(Z)V

    .line 190
    .line 191
    .line 192
    :goto_2
    iget-object v1, v0, LI0/c;->I:LU4/b;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iget-object v8, v0, LI0/c;->L:LO0/D;

    .line 198
    .line 199
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    const/4 v10, 0x4

    .line 210
    const/4 v11, -0x1

    .line 211
    const/4 v12, 0x0

    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v14, 0x0

    .line 214
    invoke-virtual/range {v8 .. v18}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final p(LS0/j;JJI)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, LS0/p;

    .line 3
    .line 4
    if-nez p6, :cond_0

    .line 5
    .line 6
    new-instance v7, LO0/p;

    .line 7
    .line 8
    iget-wide v2, v0, LS0/p;->G:J

    .line 9
    .line 10
    iget-object v4, v0, LS0/p;->H:Ls0/m;

    .line 11
    .line 12
    move-object v1, v7

    .line 13
    move-wide/from16 v5, p2

    .line 14
    .line 15
    invoke-direct/range {v1 .. v6}, LO0/p;-><init>(JLs0/m;J)V

    .line 16
    .line 17
    .line 18
    move-object v13, p0

    .line 19
    move-object v2, v7

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, LO0/p;

    .line 22
    .line 23
    iget-wide v2, v0, LS0/p;->G:J

    .line 24
    .line 25
    iget-object v2, v0, LS0/p;->J:Ls0/M;

    .line 26
    .line 27
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 30
    .line 31
    move-wide/from16 v3, p4

    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v4}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 34
    .line 35
    .line 36
    move-object v13, p0

    .line 37
    move-object v2, v1

    .line 38
    :goto_0
    iget-object v1, v13, LI0/c;->L:LO0/D;

    .line 39
    .line 40
    iget v3, v0, LS0/p;->I:I

    .line 41
    .line 42
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v4, -0x1

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    move/from16 v12, p6

    .line 57
    .line 58
    invoke-virtual/range {v1 .. v12}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
