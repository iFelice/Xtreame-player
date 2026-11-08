.class public final Lo1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# static fields
.field public static final O:[B

.field public static final P:Lm0/t;


# instance fields
.field public A:J

.field public B:J

.field public C:Lo1/h;

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:Z

.field public I:LW0/u;

.field public J:[LW0/L;

.field public K:[LW0/L;

.field public L:Z

.field public M:Z

.field public N:J

.field public final a:Lq1/k;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lp0/E;

.field public final f:Lp0/E;

.field public final g:Lp0/E;

.field public final h:[B

.field public final i:Lp0/E;

.field public final j:Lp0/J;

.field public final k:LF/i;

.field public final l:Lp0/E;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Ljava/util/ArrayDeque;

.field public final o:Ll/s;

.field public final p:LW0/L;

.field public final q:Le0/u;

.field public r:Lz4/d0;

.field public s:I

.field public t:I

.field public u:J

.field public v:I

.field public w:Lp0/E;

.field public x:J

.field public y:I

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo1/i;->O:[B

    .line 9
    .line 10
    new-instance v0, Lm0/s;

    .line 11
    .line 12
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lo1/i;->P:Lm0/t;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILF2/G;)V
    .locals 7

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    .line 3
    invoke-direct/range {v1 .. v6}, Lo1/i;-><init>(Lq1/k;ILp0/J;Ljava/util/List;LW0/L;)V

    return-void
.end method

.method public constructor <init>(Lq1/k;ILp0/J;Ljava/util/List;LW0/L;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lo1/i;->a:Lq1/k;

    .line 6
    iput p2, p0, Lo1/i;->b:I

    .line 7
    iput-object p3, p0, Lo1/i;->j:Lp0/J;

    .line 8
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo1/i;->c:Ljava/util/List;

    .line 9
    iput-object p5, p0, Lo1/i;->p:LW0/L;

    .line 10
    new-instance p1, LF/i;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, LF/i;-><init>(I)V

    iput-object p1, p0, Lo1/i;->k:LF/i;

    .line 11
    new-instance p1, Lp0/E;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    iput-object p1, p0, Lo1/i;->l:Lp0/E;

    .line 12
    new-instance p1, Lp0/E;

    sget-object p3, Lq0/p;->a:[B

    invoke-direct {p1, p3}, Lp0/E;-><init>([B)V

    iput-object p1, p0, Lo1/i;->e:Lp0/E;

    .line 13
    new-instance p1, Lp0/E;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lp0/E;-><init>(I)V

    iput-object p1, p0, Lo1/i;->f:Lp0/E;

    .line 14
    new-instance p1, Lp0/E;

    invoke-direct {p1}, Lp0/E;-><init>()V

    iput-object p1, p0, Lo1/i;->g:Lp0/E;

    .line 15
    new-array p1, p2, [B

    iput-object p1, p0, Lo1/i;->h:[B

    .line 16
    new-instance p2, Lp0/E;

    invoke-direct {p2, p1}, Lp0/E;-><init>([B)V

    iput-object p2, p0, Lo1/i;->i:Lp0/E;

    .line 17
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo1/i;->m:Ljava/util/ArrayDeque;

    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo1/i;->n:Ljava/util/ArrayDeque;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo1/i;->d:Landroid/util/SparseArray;

    .line 20
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 21
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 22
    iput-object p1, p0, Lo1/i;->r:Lz4/d0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    iput-wide p1, p0, Lo1/i;->A:J

    .line 24
    iput-wide p1, p0, Lo1/i;->z:J

    .line 25
    iput-wide p1, p0, Lo1/i;->B:J

    .line 26
    sget-object p1, LW0/u;->l:LF2/G;

    iput-object p1, p0, Lo1/i;->I:LW0/u;

    const/4 p1, 0x0

    .line 27
    new-array p2, p1, [LW0/L;

    iput-object p2, p0, Lo1/i;->J:[LW0/L;

    .line 28
    new-array p1, p1, [LW0/L;

    iput-object p1, p0, Lo1/i;->K:[LW0/L;

    .line 29
    new-instance p1, Ll/s;

    new-instance p2, LB0/x;

    const/16 p3, 0x15

    invoke-direct {p2, p0, p3}, LB0/x;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Ll/s;-><init>(LB0/x;)V

    iput-object p1, p0, Lo1/i;->o:Ll/s;

    .line 30
    new-instance p1, Le0/u;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Le0/u;-><init>(I)V

    iput-object p1, p0, Lo1/i;->q:Le0/u;

    const-wide/16 p1, -0x1

    .line 31
    iput-wide p1, p0, Lo1/i;->N:J

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x40

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    or-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    :cond_1
    return v0
.end method

.method public static e(Ljava/util/ArrayList;)Lm0/n;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Lq0/d;

    .line 16
    .line 17
    iget v6, v5, Lq0/e;->b:I

    .line 18
    .line 19
    const v7, 0x70737368    # 3.013775E29f

    .line 20
    .line 21
    .line 22
    if-ne v6, v7, :cond_3

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v5, v5, Lq0/d;->c:Lp0/E;

    .line 32
    .line 33
    iget-object v5, v5, Lp0/E;->a:[B

    .line 34
    .line 35
    invoke-static {v5}, LE3/f;->w([B)LB0/w0;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    move-object v6, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v6, v6, LB0/w0;->I:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v6, Ljava/util/UUID;

    .line 46
    .line 47
    :goto_1
    if-nez v6, :cond_2

    .line 48
    .line 49
    const-string v5, "FragmentedMp4Extractor"

    .line 50
    .line 51
    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 52
    .line 53
    invoke-static {v5, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    new-instance v7, Lm0/m;

    .line 58
    .line 59
    const-string v8, "video/mp4"

    .line 60
    .line 61
    invoke-direct {v7, v6, v1, v8, v5}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    if-nez v4, :cond_5

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    new-instance p0, Lm0/n;

    .line 74
    .line 75
    new-array v0, v2, [Lm0/m;

    .line 76
    .line 77
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, [Lm0/m;

    .line 82
    .line 83
    invoke-direct {p0, v1, v2, v0}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    .line 84
    .line 85
    .line 86
    move-object v1, p0

    .line 87
    :goto_3
    return-object v1
.end method

.method public static f(Lp0/E;ILo1/r;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lp0/E;->L(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget-object v0, Lo1/e;->a:[B

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    and-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lp0/E;->D()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object p0, p2, Lo1/r;->l:[Z

    .line 32
    .line 33
    iget p1, p2, Lo1/r;->e:I

    .line 34
    .line 35
    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget v3, p2, Lo1/r;->e:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-object v3, p2, Lo1/r;->l:[Z

    .line 44
    .line 45
    invoke-static {v3, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v2, p2, Lo1/r;->n:Lp0/E;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lp0/E;->I(I)V

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p2, Lo1/r;->k:Z

    .line 58
    .line 59
    iput-boolean v0, p2, Lo1/r;->o:Z

    .line 60
    .line 61
    iget-object p1, v2, Lp0/E;->a:[B

    .line 62
    .line 63
    iget v0, v2, Lp0/E;->c:I

    .line 64
    .line 65
    invoke-virtual {p0, v1, p1, v0}, Lp0/E;->j(I[BI)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lp0/E;->L(I)V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p2, Lo1/r;->o:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const-string p0, "Senc sample count "

    .line 75
    .line 76
    const-string p1, " is different from fragment sample count"

    .line 77
    .line 78
    invoke-static {p0, v2, p1}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget p1, p2, Lo1/r;->e:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 p1, 0x0

    .line 92
    invoke-static {p0, p1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 98
    .line 99
    invoke-static {p0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0
.end method

.method public static k(JLp0/E;)Landroid/util/Pair;
    .locals 26

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lp0/E;->L(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lo1/e;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Lp0/E;->B()J

    .line 21
    .line 22
    .line 23
    move-result-wide v10

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p2 .. p2}, Lp0/E;->B()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual/range {p2 .. p2}, Lp0/E;->B()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, v5, p0

    .line 35
    .line 36
    move-wide v12, v3

    .line 37
    move-wide v14, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lp0/E;->E()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual/range {p2 .. p2}, Lp0/E;->E()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 51
    .line 52
    const-wide/32 v5, 0xf4240

    .line 53
    .line 54
    .line 55
    move-wide v3, v12

    .line 56
    move-wide v7, v10

    .line 57
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v16

    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lp0/E;->F()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    new-array v9, v1, [I

    .line 70
    .line 71
    new-array v7, v1, [J

    .line 72
    .line 73
    new-array v8, v1, [J

    .line 74
    .line 75
    new-array v5, v1, [J

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    move-wide v3, v12

    .line 79
    move-wide/from16 v18, v16

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    :goto_2
    if-ge v12, v1, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/high16 v13, -0x80000000

    .line 89
    .line 90
    and-int/2addr v13, v6

    .line 91
    if-nez v13, :cond_1

    .line 92
    .line 93
    invoke-virtual/range {p2 .. p2}, Lp0/E;->B()J

    .line 94
    .line 95
    .line 96
    move-result-wide v20

    .line 97
    const v13, 0x7fffffff

    .line 98
    .line 99
    .line 100
    and-int/2addr v6, v13

    .line 101
    aput v6, v9, v12

    .line 102
    .line 103
    aput-wide v14, v7, v12

    .line 104
    .line 105
    aput-wide v18, v5, v12

    .line 106
    .line 107
    add-long v18, v3, v20

    .line 108
    .line 109
    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 110
    .line 111
    const-wide/32 v20, 0xf4240

    .line 112
    .line 113
    .line 114
    move-wide/from16 v3, v18

    .line 115
    .line 116
    move-object v2, v5

    .line 117
    move-wide/from16 v5, v20

    .line 118
    .line 119
    move-object/from16 v22, v7

    .line 120
    .line 121
    move-object/from16 v23, v8

    .line 122
    .line 123
    move-wide v7, v10

    .line 124
    move/from16 p0, v1

    .line 125
    .line 126
    move-object v1, v9

    .line 127
    move-object v9, v13

    .line 128
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    aget-wide v5, v2, v12

    .line 133
    .line 134
    sub-long v5, v3, v5

    .line 135
    .line 136
    move-object/from16 v7, v23

    .line 137
    .line 138
    aput-wide v5, v7, v12

    .line 139
    .line 140
    const/4 v5, 0x4

    .line 141
    invoke-virtual {v0, v5}, Lp0/E;->M(I)V

    .line 142
    .line 143
    .line 144
    aget v6, v1, v12

    .line 145
    .line 146
    int-to-long v8, v6

    .line 147
    add-long/2addr v14, v8

    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    move-object v9, v1

    .line 151
    move-object v5, v2

    .line 152
    move-object v8, v7

    .line 153
    move-object/from16 v7, v22

    .line 154
    .line 155
    const/4 v2, 0x4

    .line 156
    move/from16 v1, p0

    .line 157
    .line 158
    move-wide/from16 v24, v3

    .line 159
    .line 160
    move-wide/from16 v3, v18

    .line 161
    .line 162
    move-wide/from16 v18, v24

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    throw v0

    .line 173
    :cond_2
    move-object v2, v5

    .line 174
    move-object/from16 v22, v7

    .line 175
    .line 176
    move-object v7, v8

    .line 177
    move-object v1, v9

    .line 178
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v3, LW0/l;

    .line 183
    .line 184
    move-object/from16 v4, v22

    .line 185
    .line 186
    invoke-direct {v3, v1, v4, v7, v2}, LW0/l;-><init>([I[J[J[J)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo1/i;->s:I

    .line 3
    .line 4
    iput v0, p0, Lo1/i;->v:I

    .line 5
    .line 6
    return-void
.end method

.method public final d(LW0/u;)V
    .locals 6

    .line 1
    iget v0, p0, Lo1/i;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lq1/n;

    .line 8
    .line 9
    iget-object v2, p0, Lo1/i;->a:Lq1/k;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lq1/n;-><init>(LW0/u;Lq1/k;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    iput-object p1, p0, Lo1/i;->I:LW0/u;

    .line 16
    .line 17
    invoke-virtual {p0}, Lo1/i;->c()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [LW0/L;

    .line 22
    .line 23
    iput-object p1, p0, Lo1/i;->J:[LW0/L;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lo1/i;->p:LW0/L;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    aput-object v2, p1, v1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    and-int/lit8 v0, v0, 0x4

    .line 36
    .line 37
    const/16 v3, 0x64

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    add-int/lit8 v0, v2, 0x1

    .line 42
    .line 43
    iget-object v4, p0, Lo1/i;->I:LW0/u;

    .line 44
    .line 45
    const/4 v5, 0x5

    .line 46
    invoke-interface {v4, v3, v5}, LW0/u;->t(II)LW0/L;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aput-object v3, p1, v2

    .line 51
    .line 52
    const/16 v3, 0x65

    .line 53
    .line 54
    move v2, v0

    .line 55
    :cond_2
    iget-object p1, p0, Lo1/i;->J:[LW0/L;

    .line 56
    .line 57
    invoke-static {v2, p1}, Lp0/M;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, [LW0/L;

    .line 62
    .line 63
    iput-object p1, p0, Lo1/i;->J:[LW0/L;

    .line 64
    .line 65
    array-length v0, p1

    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_1
    if-ge v2, v0, :cond_3

    .line 68
    .line 69
    aget-object v4, p1, v2

    .line 70
    .line 71
    sget-object v5, Lo1/i;->P:Lm0/t;

    .line 72
    .line 73
    invoke-interface {v4, v5}, LW0/L;->b(Lm0/t;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p0, Lo1/i;->c:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    new-array v0, v0, [LW0/L;

    .line 86
    .line 87
    iput-object v0, p0, Lo1/i;->K:[LW0/L;

    .line 88
    .line 89
    :goto_2
    iget-object v0, p0, Lo1/i;->K:[LW0/L;

    .line 90
    .line 91
    array-length v0, v0

    .line 92
    if-ge v1, v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lo1/i;->I:LW0/u;

    .line 95
    .line 96
    add-int/lit8 v2, v3, 0x1

    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    invoke-interface {v0, v3, v4}, LW0/u;->t(II)LW0/L;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lm0/t;

    .line 108
    .line 109
    invoke-interface {v0, v3}, LW0/L;->b(Lm0/t;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lo1/i;->K:[LW0/L;

    .line 113
    .line 114
    aput-object v0, v3, v1

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    move v3, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lo1/o;->b(LW0/t;ZZ)LW0/J;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 15
    .line 16
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 17
    .line 18
    :goto_0
    iput-object v2, p0, Lo1/i;->r:Lz4/d0;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    return v0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :goto_0
    iget v2, v0, Lo1/i;->s:I

    .line 6
    .line 7
    iget-object v3, v0, Lo1/i;->m:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iget-object v4, v0, Lo1/i;->d:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v8, v0, Lo1/i;->o:Ll/s;

    .line 13
    .line 14
    iget-object v10, v0, Lo1/i;->i:Lp0/E;

    .line 15
    .line 16
    iget-object v11, v0, Lo1/i;->q:Le0/u;

    .line 17
    .line 18
    const/4 v14, 0x2

    .line 19
    if-eqz v2, :cond_47

    .line 20
    .line 21
    iget-object v6, v0, Lo1/i;->n:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    iget-object v7, v0, Lo1/i;->j:Lp0/J;

    .line 24
    .line 25
    iget v9, v0, Lo1/i;->b:I

    .line 26
    .line 27
    const-string v15, "FragmentedMp4Extractor"

    .line 28
    .line 29
    if-eq v2, v5, :cond_38

    .line 30
    .line 31
    const-wide v16, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    if-eq v2, v14, :cond_33

    .line 37
    .line 38
    iget-object v2, v0, Lo1/i;->C:Lo1/h;

    .line 39
    .line 40
    if-nez v2, :cond_b

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    :goto_1
    if-ge v14, v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v20

    .line 54
    move-object/from16 v12, v20

    .line 55
    .line 56
    check-cast v12, Lo1/h;

    .line 57
    .line 58
    iget-boolean v5, v12, Lo1/h;->m:Z

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    iget v3, v12, Lo1/h;->f:I

    .line 63
    .line 64
    iget-object v13, v12, Lo1/h;->d:Lo1/s;

    .line 65
    .line 66
    iget v13, v13, Lo1/s;->b:I

    .line 67
    .line 68
    if-eq v3, v13, :cond_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    move/from16 v24, v2

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_1
    :goto_2
    iget-object v3, v12, Lo1/h;->b:Lo1/r;

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    iget v13, v12, Lo1/h;->h:I

    .line 79
    .line 80
    move/from16 v24, v2

    .line 81
    .line 82
    iget v2, v3, Lo1/r;->d:I

    .line 83
    .line 84
    if-ne v13, v2, :cond_3

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_2
    move/from16 v24, v2

    .line 88
    .line 89
    :cond_3
    if-nez v5, :cond_4

    .line 90
    .line 91
    iget-object v2, v12, Lo1/h;->d:Lo1/s;

    .line 92
    .line 93
    iget-object v2, v2, Lo1/s;->c:[J

    .line 94
    .line 95
    iget v3, v12, Lo1/h;->f:I

    .line 96
    .line 97
    aget-wide v25, v2, v3

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    iget-object v2, v3, Lo1/r;->f:[J

    .line 101
    .line 102
    iget v3, v12, Lo1/h;->h:I

    .line 103
    .line 104
    aget-wide v25, v2, v3

    .line 105
    .line 106
    :goto_3
    cmp-long v2, v25, v16

    .line 107
    .line 108
    if-gez v2, :cond_5

    .line 109
    .line 110
    move-object v11, v12

    .line 111
    move-wide/from16 v16, v25

    .line 112
    .line 113
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 114
    .line 115
    move/from16 v2, v24

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    if-nez v11, :cond_8

    .line 120
    .line 121
    iget-wide v2, v0, Lo1/i;->x:J

    .line 122
    .line 123
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    sub-long/2addr v2, v4

    .line 128
    long-to-int v3, v2

    .line 129
    if-ltz v3, :cond_7

    .line 130
    .line 131
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lo1/i;->c()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_7
    const-string v1, "Offset to end of mdat was negative."

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    throw v1

    .line 147
    :cond_8
    iget-boolean v2, v11, Lo1/h;->m:Z

    .line 148
    .line 149
    if-nez v2, :cond_9

    .line 150
    .line 151
    iget-object v2, v11, Lo1/h;->d:Lo1/s;

    .line 152
    .line 153
    iget-object v2, v2, Lo1/s;->c:[J

    .line 154
    .line 155
    iget v3, v11, Lo1/h;->f:I

    .line 156
    .line 157
    aget-wide v3, v2, v3

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_9
    iget-object v2, v11, Lo1/h;->b:Lo1/r;

    .line 161
    .line 162
    iget-object v2, v2, Lo1/r;->f:[J

    .line 163
    .line 164
    iget v3, v11, Lo1/h;->h:I

    .line 165
    .line 166
    aget-wide v3, v2, v3

    .line 167
    .line 168
    :goto_5
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 169
    .line 170
    .line 171
    move-result-wide v12

    .line 172
    sub-long/2addr v3, v12

    .line 173
    long-to-int v2, v3

    .line 174
    if-gez v2, :cond_a

    .line 175
    .line 176
    const-string v2, "Ignoring negative offset to sample data."

    .line 177
    .line 178
    invoke-static {v15, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    :cond_a
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 183
    .line 184
    .line 185
    iput-object v11, v0, Lo1/i;->C:Lo1/h;

    .line 186
    .line 187
    move-object v2, v11

    .line 188
    :cond_b
    iget v3, v0, Lo1/i;->s:I

    .line 189
    .line 190
    const/4 v4, 0x6

    .line 191
    const-string v5, "video/hevc"

    .line 192
    .line 193
    const-string v11, "video/avc"

    .line 194
    .line 195
    const/4 v12, 0x4

    .line 196
    iget-object v13, v2, Lo1/h;->b:Lo1/r;

    .line 197
    .line 198
    const/4 v14, 0x3

    .line 199
    if-ne v3, v14, :cond_16

    .line 200
    .line 201
    iget-boolean v3, v2, Lo1/h;->m:Z

    .line 202
    .line 203
    if-nez v3, :cond_c

    .line 204
    .line 205
    iget-object v3, v2, Lo1/h;->d:Lo1/s;

    .line 206
    .line 207
    iget-object v3, v3, Lo1/s;->d:[I

    .line 208
    .line 209
    iget v14, v2, Lo1/h;->f:I

    .line 210
    .line 211
    aget v3, v3, v14

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_c
    iget-object v3, v13, Lo1/r;->h:[I

    .line 215
    .line 216
    iget v14, v2, Lo1/h;->f:I

    .line 217
    .line 218
    aget v3, v3, v14

    .line 219
    .line 220
    :goto_6
    iput v3, v0, Lo1/i;->D:I

    .line 221
    .line 222
    iget-object v3, v2, Lo1/h;->d:Lo1/s;

    .line 223
    .line 224
    iget-object v3, v3, Lo1/s;->a:Lo1/p;

    .line 225
    .line 226
    iget-object v3, v3, Lo1/p;->g:Lm0/t;

    .line 227
    .line 228
    iget-object v14, v3, Lm0/t;->o:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    if-eqz v14, :cond_d

    .line 235
    .line 236
    and-int/lit8 v3, v9, 0x40

    .line 237
    .line 238
    if-eqz v3, :cond_e

    .line 239
    .line 240
    :goto_7
    const/4 v3, 0x1

    .line 241
    :goto_8
    const/4 v9, 0x1

    .line 242
    goto :goto_9

    .line 243
    :cond_d
    iget-object v3, v3, Lm0/t;->o:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_e

    .line 250
    .line 251
    and-int/lit16 v3, v9, 0x80

    .line 252
    .line 253
    if-eqz v3, :cond_e

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_e
    const/4 v3, 0x0

    .line 257
    goto :goto_8

    .line 258
    :goto_9
    xor-int/2addr v3, v9

    .line 259
    iput-boolean v3, v0, Lo1/i;->G:Z

    .line 260
    .line 261
    iget v3, v2, Lo1/h;->f:I

    .line 262
    .line 263
    iget v9, v2, Lo1/h;->i:I

    .line 264
    .line 265
    if-ge v3, v9, :cond_13

    .line 266
    .line 267
    iget v3, v0, Lo1/i;->D:I

    .line 268
    .line 269
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Lo1/h;->b()Lo1/q;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    if-nez v1, :cond_f

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_f
    iget-object v3, v13, Lo1/r;->n:Lp0/E;

    .line 280
    .line 281
    iget v1, v1, Lo1/q;->d:I

    .line 282
    .line 283
    if-eqz v1, :cond_10

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Lp0/E;->M(I)V

    .line 286
    .line 287
    .line 288
    :cond_10
    iget v1, v2, Lo1/h;->f:I

    .line 289
    .line 290
    iget-boolean v5, v13, Lo1/r;->k:Z

    .line 291
    .line 292
    if-eqz v5, :cond_11

    .line 293
    .line 294
    iget-object v5, v13, Lo1/r;->l:[Z

    .line 295
    .line 296
    aget-boolean v1, v5, v1

    .line 297
    .line 298
    if-eqz v1, :cond_11

    .line 299
    .line 300
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    mul-int/lit8 v1, v1, 0x6

    .line 305
    .line 306
    invoke-virtual {v3, v1}, Lp0/E;->M(I)V

    .line 307
    .line 308
    .line 309
    :cond_11
    :goto_a
    invoke-virtual {v2}, Lo1/h;->c()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_12

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    iput-object v1, v0, Lo1/i;->C:Lo1/h;

    .line 317
    .line 318
    :cond_12
    const/4 v1, 0x3

    .line 319
    iput v1, v0, Lo1/i;->s:I

    .line 320
    .line 321
    :goto_b
    const/4 v1, 0x0

    .line 322
    goto/16 :goto_1d

    .line 323
    .line 324
    :cond_13
    iget-object v3, v2, Lo1/h;->d:Lo1/s;

    .line 325
    .line 326
    iget-object v3, v3, Lo1/s;->a:Lo1/p;

    .line 327
    .line 328
    iget v3, v3, Lo1/p;->h:I

    .line 329
    .line 330
    const/4 v9, 0x1

    .line 331
    if-ne v3, v9, :cond_14

    .line 332
    .line 333
    iget v3, v0, Lo1/i;->D:I

    .line 334
    .line 335
    const/16 v9, 0x8

    .line 336
    .line 337
    sub-int/2addr v3, v9

    .line 338
    iput v3, v0, Lo1/i;->D:I

    .line 339
    .line 340
    invoke-interface {v1, v9}, LW0/t;->n(I)V

    .line 341
    .line 342
    .line 343
    :cond_14
    iget-object v3, v2, Lo1/h;->d:Lo1/s;

    .line 344
    .line 345
    iget-object v3, v3, Lo1/s;->a:Lo1/p;

    .line 346
    .line 347
    iget-object v3, v3, Lo1/p;->g:Lm0/t;

    .line 348
    .line 349
    iget-object v3, v3, Lm0/t;->o:Ljava/lang/String;

    .line 350
    .line 351
    const-string v9, "audio/ac4"

    .line 352
    .line 353
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_15

    .line 358
    .line 359
    iget v3, v0, Lo1/i;->D:I

    .line 360
    .line 361
    const/4 v9, 0x7

    .line 362
    invoke-virtual {v2, v3, v9}, Lo1/h;->d(II)I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    iput v3, v0, Lo1/i;->E:I

    .line 367
    .line 368
    iget v3, v0, Lo1/i;->D:I

    .line 369
    .line 370
    invoke-static {v3, v10}, LW0/a;->b(ILp0/E;)V

    .line 371
    .line 372
    .line 373
    iget-object v3, v2, Lo1/h;->a:LW0/L;

    .line 374
    .line 375
    invoke-interface {v3, v9, v10}, LW0/L;->e(ILp0/E;)V

    .line 376
    .line 377
    .line 378
    iget v3, v0, Lo1/i;->E:I

    .line 379
    .line 380
    add-int/2addr v3, v9

    .line 381
    iput v3, v0, Lo1/i;->E:I

    .line 382
    .line 383
    const/4 v9, 0x0

    .line 384
    goto :goto_c

    .line 385
    :cond_15
    iget v3, v0, Lo1/i;->D:I

    .line 386
    .line 387
    const/4 v9, 0x0

    .line 388
    invoke-virtual {v2, v3, v9}, Lo1/h;->d(II)I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    iput v3, v0, Lo1/i;->E:I

    .line 393
    .line 394
    :goto_c
    iget v3, v0, Lo1/i;->D:I

    .line 395
    .line 396
    iget v10, v0, Lo1/i;->E:I

    .line 397
    .line 398
    add-int/2addr v3, v10

    .line 399
    iput v3, v0, Lo1/i;->D:I

    .line 400
    .line 401
    iput v12, v0, Lo1/i;->s:I

    .line 402
    .line 403
    iput v9, v0, Lo1/i;->F:I

    .line 404
    .line 405
    :cond_16
    iget-object v3, v2, Lo1/h;->d:Lo1/s;

    .line 406
    .line 407
    iget-object v9, v3, Lo1/s;->a:Lo1/p;

    .line 408
    .line 409
    iget-boolean v10, v2, Lo1/h;->m:Z

    .line 410
    .line 411
    if-nez v10, :cond_17

    .line 412
    .line 413
    iget-object v3, v3, Lo1/s;->f:[J

    .line 414
    .line 415
    iget v10, v2, Lo1/h;->f:I

    .line 416
    .line 417
    aget-wide v13, v3, v10

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_17
    iget v3, v2, Lo1/h;->f:I

    .line 421
    .line 422
    iget-object v10, v13, Lo1/r;->i:[J

    .line 423
    .line 424
    aget-wide v13, v10, v3

    .line 425
    .line 426
    :goto_d
    if-eqz v7, :cond_18

    .line 427
    .line 428
    invoke-virtual {v7, v13, v14}, Lp0/J;->a(J)J

    .line 429
    .line 430
    .line 431
    move-result-wide v13

    .line 432
    :cond_18
    iget v3, v9, Lo1/p;->k:I

    .line 433
    .line 434
    iget-object v10, v2, Lo1/h;->a:LW0/L;

    .line 435
    .line 436
    if-eqz v3, :cond_2a

    .line 437
    .line 438
    iget-object v15, v0, Lo1/i;->f:Lp0/E;

    .line 439
    .line 440
    iget-object v4, v15, Lp0/E;->a:[B

    .line 441
    .line 442
    const/16 v16, 0x0

    .line 443
    .line 444
    aput-byte v16, v4, v16

    .line 445
    .line 446
    const/16 v17, 0x1

    .line 447
    .line 448
    aput-byte v16, v4, v17

    .line 449
    .line 450
    const/16 v17, 0x2

    .line 451
    .line 452
    aput-byte v16, v4, v17

    .line 453
    .line 454
    rsub-int/lit8 v3, v3, 0x4

    .line 455
    .line 456
    :goto_e
    iget v12, v0, Lo1/i;->E:I

    .line 457
    .line 458
    move-object/from16 v19, v7

    .line 459
    .line 460
    iget v7, v0, Lo1/i;->D:I

    .line 461
    .line 462
    if-ge v12, v7, :cond_29

    .line 463
    .line 464
    iget v7, v0, Lo1/i;->F:I

    .line 465
    .line 466
    iget-object v12, v9, Lo1/p;->g:Lm0/t;

    .line 467
    .line 468
    if-nez v7, :cond_24

    .line 469
    .line 470
    iget-object v7, v0, Lo1/i;->K:[LW0/L;

    .line 471
    .line 472
    array-length v7, v7

    .line 473
    move-object/from16 v31, v6

    .line 474
    .line 475
    iget v6, v9, Lo1/p;->k:I

    .line 476
    .line 477
    if-gtz v7, :cond_1a

    .line 478
    .line 479
    iget-boolean v7, v0, Lo1/i;->G:Z

    .line 480
    .line 481
    if-nez v7, :cond_19

    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_19
    move-object/from16 v32, v2

    .line 485
    .line 486
    move-object/from16 v17, v9

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_1a
    :goto_f
    invoke-static {v12}, Lq0/p;->e(Lm0/t;)I

    .line 490
    .line 491
    .line 492
    move-result v7

    .line 493
    move-object/from16 v17, v9

    .line 494
    .line 495
    add-int v9, v6, v7

    .line 496
    .line 497
    move/from16 v21, v7

    .line 498
    .line 499
    iget v7, v0, Lo1/i;->D:I

    .line 500
    .line 501
    move-object/from16 v32, v2

    .line 502
    .line 503
    iget v2, v0, Lo1/i;->E:I

    .line 504
    .line 505
    sub-int/2addr v7, v2

    .line 506
    if-gt v9, v7, :cond_1b

    .line 507
    .line 508
    move/from16 v2, v21

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_1b
    :goto_10
    const/4 v2, 0x0

    .line 512
    :goto_11
    add-int/2addr v6, v2

    .line 513
    invoke-interface {v1, v4, v3, v6}, LW0/t;->readFully([BII)V

    .line 514
    .line 515
    .line 516
    const/4 v6, 0x0

    .line 517
    invoke-virtual {v15, v6}, Lp0/E;->L(I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v15}, Lp0/E;->l()I

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-ltz v7, :cond_23

    .line 525
    .line 526
    sub-int/2addr v7, v2

    .line 527
    iput v7, v0, Lo1/i;->F:I

    .line 528
    .line 529
    iget-object v7, v0, Lo1/i;->e:Lp0/E;

    .line 530
    .line 531
    invoke-virtual {v7, v6}, Lp0/E;->L(I)V

    .line 532
    .line 533
    .line 534
    const/4 v6, 0x4

    .line 535
    invoke-interface {v10, v6, v7}, LW0/L;->e(ILp0/E;)V

    .line 536
    .line 537
    .line 538
    iget v7, v0, Lo1/i;->E:I

    .line 539
    .line 540
    add-int/2addr v7, v6

    .line 541
    iput v7, v0, Lo1/i;->E:I

    .line 542
    .line 543
    iget v7, v0, Lo1/i;->D:I

    .line 544
    .line 545
    add-int/2addr v7, v3

    .line 546
    iput v7, v0, Lo1/i;->D:I

    .line 547
    .line 548
    iget-object v7, v0, Lo1/i;->K:[LW0/L;

    .line 549
    .line 550
    array-length v7, v7

    .line 551
    if-lez v7, :cond_20

    .line 552
    .line 553
    if-lez v2, :cond_20

    .line 554
    .line 555
    aget-byte v7, v4, v6

    .line 556
    .line 557
    sget-object v6, Lq0/p;->a:[B

    .line 558
    .line 559
    iget-object v6, v12, Lm0/t;->o:Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v6, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    iget-object v9, v12, Lm0/t;->k:Ljava/lang/String;

    .line 566
    .line 567
    if-nez v6, :cond_1d

    .line 568
    .line 569
    invoke-static {v9, v11}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    if-eqz v6, :cond_1c

    .line 574
    .line 575
    goto :goto_12

    .line 576
    :cond_1c
    move/from16 v21, v3

    .line 577
    .line 578
    const/4 v3, 0x6

    .line 579
    goto :goto_13

    .line 580
    :cond_1d
    :goto_12
    and-int/lit8 v6, v7, 0x1f

    .line 581
    .line 582
    move/from16 v21, v3

    .line 583
    .line 584
    const/4 v3, 0x6

    .line 585
    if-eq v6, v3, :cond_1f

    .line 586
    .line 587
    :goto_13
    iget-object v6, v12, Lm0/t;->o:Ljava/lang/String;

    .line 588
    .line 589
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    if-nez v6, :cond_1e

    .line 594
    .line 595
    invoke-static {v9, v5}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    if-eqz v6, :cond_21

    .line 600
    .line 601
    :cond_1e
    and-int/lit8 v6, v7, 0x7e

    .line 602
    .line 603
    const/4 v7, 0x1

    .line 604
    shr-int/2addr v6, v7

    .line 605
    const/16 v7, 0x27

    .line 606
    .line 607
    if-ne v6, v7, :cond_21

    .line 608
    .line 609
    :cond_1f
    const/4 v6, 0x1

    .line 610
    goto :goto_14

    .line 611
    :cond_20
    move/from16 v21, v3

    .line 612
    .line 613
    const/4 v3, 0x6

    .line 614
    :cond_21
    const/4 v6, 0x0

    .line 615
    :goto_14
    iput-boolean v6, v0, Lo1/i;->H:Z

    .line 616
    .line 617
    invoke-interface {v10, v2, v15}, LW0/L;->e(ILp0/E;)V

    .line 618
    .line 619
    .line 620
    iget v6, v0, Lo1/i;->E:I

    .line 621
    .line 622
    add-int/2addr v6, v2

    .line 623
    iput v6, v0, Lo1/i;->E:I

    .line 624
    .line 625
    if-lez v2, :cond_22

    .line 626
    .line 627
    iget-boolean v6, v0, Lo1/i;->G:Z

    .line 628
    .line 629
    if-nez v6, :cond_22

    .line 630
    .line 631
    invoke-static {v4, v2, v12}, Lq0/p;->d([BILm0/t;)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-eqz v2, :cond_22

    .line 636
    .line 637
    const/4 v2, 0x1

    .line 638
    iput-boolean v2, v0, Lo1/i;->G:Z

    .line 639
    .line 640
    :cond_22
    :goto_15
    move-object/from16 v9, v17

    .line 641
    .line 642
    move-object/from16 v7, v19

    .line 643
    .line 644
    move/from16 v3, v21

    .line 645
    .line 646
    move-object/from16 v6, v31

    .line 647
    .line 648
    move-object/from16 v2, v32

    .line 649
    .line 650
    goto/16 :goto_e

    .line 651
    .line 652
    :cond_23
    const-string v1, "Invalid NAL length"

    .line 653
    .line 654
    const/4 v2, 0x0

    .line 655
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    throw v1

    .line 660
    :cond_24
    move-object/from16 v32, v2

    .line 661
    .line 662
    move/from16 v21, v3

    .line 663
    .line 664
    move-object/from16 v31, v6

    .line 665
    .line 666
    move-object/from16 v17, v9

    .line 667
    .line 668
    const/4 v3, 0x6

    .line 669
    iget-boolean v2, v0, Lo1/i;->H:Z

    .line 670
    .line 671
    if-eqz v2, :cond_28

    .line 672
    .line 673
    iget-object v2, v0, Lo1/i;->g:Lp0/E;

    .line 674
    .line 675
    invoke-virtual {v2, v7}, Lp0/E;->I(I)V

    .line 676
    .line 677
    .line 678
    iget-object v6, v2, Lp0/E;->a:[B

    .line 679
    .line 680
    iget v7, v0, Lo1/i;->F:I

    .line 681
    .line 682
    const/4 v9, 0x0

    .line 683
    invoke-interface {v1, v6, v9, v7}, LW0/t;->readFully([BII)V

    .line 684
    .line 685
    .line 686
    iget v6, v0, Lo1/i;->F:I

    .line 687
    .line 688
    invoke-interface {v10, v6, v2}, LW0/L;->e(ILp0/E;)V

    .line 689
    .line 690
    .line 691
    iget v6, v0, Lo1/i;->F:I

    .line 692
    .line 693
    iget-object v7, v2, Lp0/E;->a:[B

    .line 694
    .line 695
    iget v3, v2, Lp0/E;->c:I

    .line 696
    .line 697
    invoke-static {v3, v7}, Lq0/p;->m(I[B)I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    invoke-virtual {v2, v9}, Lp0/E;->L(I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v3}, Lp0/E;->K(I)V

    .line 705
    .line 706
    .line 707
    iget v3, v12, Lm0/t;->q:I

    .line 708
    .line 709
    const/4 v7, -0x1

    .line 710
    if-ne v3, v7, :cond_25

    .line 711
    .line 712
    iget v3, v8, Ll/s;->a:I

    .line 713
    .line 714
    if-eqz v3, :cond_26

    .line 715
    .line 716
    invoke-virtual {v8, v9}, Ll/s;->j(I)V

    .line 717
    .line 718
    .line 719
    goto :goto_16

    .line 720
    :cond_25
    iget v7, v8, Ll/s;->a:I

    .line 721
    .line 722
    if-eq v7, v3, :cond_26

    .line 723
    .line 724
    invoke-virtual {v8, v3}, Ll/s;->j(I)V

    .line 725
    .line 726
    .line 727
    :cond_26
    :goto_16
    invoke-virtual {v8, v13, v14, v2}, Ll/s;->a(JLp0/E;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual/range {v32 .. v32}, Lo1/h;->a()I

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    const/4 v3, 0x4

    .line 735
    and-int/2addr v2, v3

    .line 736
    if-eqz v2, :cond_27

    .line 737
    .line 738
    const/4 v2, 0x0

    .line 739
    invoke-virtual {v8, v2}, Ll/s;->c(I)V

    .line 740
    .line 741
    .line 742
    goto :goto_17

    .line 743
    :cond_27
    const/4 v2, 0x0

    .line 744
    goto :goto_17

    .line 745
    :cond_28
    const/4 v2, 0x0

    .line 746
    const/4 v3, 0x4

    .line 747
    invoke-interface {v10, v1, v7, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    :goto_17
    iget v2, v0, Lo1/i;->E:I

    .line 752
    .line 753
    add-int/2addr v2, v6

    .line 754
    iput v2, v0, Lo1/i;->E:I

    .line 755
    .line 756
    iget v2, v0, Lo1/i;->F:I

    .line 757
    .line 758
    sub-int/2addr v2, v6

    .line 759
    iput v2, v0, Lo1/i;->F:I

    .line 760
    .line 761
    goto :goto_15

    .line 762
    :cond_29
    move-object/from16 v32, v2

    .line 763
    .line 764
    move-object/from16 v31, v6

    .line 765
    .line 766
    goto :goto_19

    .line 767
    :cond_2a
    move-object/from16 v32, v2

    .line 768
    .line 769
    move-object/from16 v31, v6

    .line 770
    .line 771
    move-object/from16 v19, v7

    .line 772
    .line 773
    :goto_18
    iget v2, v0, Lo1/i;->E:I

    .line 774
    .line 775
    iget v3, v0, Lo1/i;->D:I

    .line 776
    .line 777
    if-ge v2, v3, :cond_2b

    .line 778
    .line 779
    sub-int/2addr v3, v2

    .line 780
    const/4 v2, 0x0

    .line 781
    invoke-interface {v10, v1, v3, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    iget v2, v0, Lo1/i;->E:I

    .line 786
    .line 787
    add-int/2addr v2, v3

    .line 788
    iput v2, v0, Lo1/i;->E:I

    .line 789
    .line 790
    goto :goto_18

    .line 791
    :cond_2b
    :goto_19
    invoke-virtual/range {v32 .. v32}, Lo1/h;->a()I

    .line 792
    .line 793
    .line 794
    move-result v1

    .line 795
    iget-boolean v2, v0, Lo1/i;->G:Z

    .line 796
    .line 797
    if-nez v2, :cond_2c

    .line 798
    .line 799
    const/high16 v2, 0x4000000

    .line 800
    .line 801
    or-int/2addr v1, v2

    .line 802
    :cond_2c
    move/from16 v27, v1

    .line 803
    .line 804
    invoke-virtual/range {v32 .. v32}, Lo1/h;->b()Lo1/q;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    if-eqz v1, :cond_2d

    .line 809
    .line 810
    iget-object v1, v1, Lo1/q;->c:LW0/K;

    .line 811
    .line 812
    move-object/from16 v30, v1

    .line 813
    .line 814
    goto :goto_1a

    .line 815
    :cond_2d
    const/16 v30, 0x0

    .line 816
    .line 817
    :goto_1a
    iget v1, v0, Lo1/i;->D:I

    .line 818
    .line 819
    const/16 v29, 0x0

    .line 820
    .line 821
    move-object/from16 v24, v10

    .line 822
    .line 823
    move-wide/from16 v25, v13

    .line 824
    .line 825
    move/from16 v28, v1

    .line 826
    .line 827
    invoke-interface/range {v24 .. v30}, LW0/L;->d(JIIILW0/K;)V

    .line 828
    .line 829
    .line 830
    :goto_1b
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    if-nez v1, :cond_31

    .line 835
    .line 836
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Lo1/g;

    .line 841
    .line 842
    iget v2, v0, Lo1/i;->y:I

    .line 843
    .line 844
    iget v3, v1, Lo1/g;->c:I

    .line 845
    .line 846
    sub-int/2addr v2, v3

    .line 847
    iput v2, v0, Lo1/i;->y:I

    .line 848
    .line 849
    iget-boolean v2, v1, Lo1/g;->b:Z

    .line 850
    .line 851
    iget-wide v3, v1, Lo1/g;->a:J

    .line 852
    .line 853
    if-eqz v2, :cond_2e

    .line 854
    .line 855
    add-long/2addr v3, v13

    .line 856
    :cond_2e
    move-object/from16 v2, v19

    .line 857
    .line 858
    if-eqz v19, :cond_2f

    .line 859
    .line 860
    invoke-virtual {v2, v3, v4}, Lp0/J;->a(J)J

    .line 861
    .line 862
    .line 863
    move-result-wide v3

    .line 864
    :cond_2f
    iget-object v12, v0, Lo1/i;->J:[LW0/L;

    .line 865
    .line 866
    array-length v15, v12

    .line 867
    const/4 v11, 0x0

    .line 868
    :goto_1c
    if-ge v11, v15, :cond_30

    .line 869
    .line 870
    aget-object v5, v12, v11

    .line 871
    .line 872
    iget v10, v0, Lo1/i;->y:I

    .line 873
    .line 874
    const/16 v16, 0x0

    .line 875
    .line 876
    const/4 v8, 0x1

    .line 877
    iget v9, v1, Lo1/g;->c:I

    .line 878
    .line 879
    move-wide v6, v3

    .line 880
    move/from16 v17, v11

    .line 881
    .line 882
    move-object/from16 v11, v16

    .line 883
    .line 884
    invoke-interface/range {v5 .. v11}, LW0/L;->d(JIIILW0/K;)V

    .line 885
    .line 886
    .line 887
    add-int/lit8 v11, v17, 0x1

    .line 888
    .line 889
    goto :goto_1c

    .line 890
    :cond_30
    move-object/from16 v19, v2

    .line 891
    .line 892
    goto :goto_1b

    .line 893
    :cond_31
    invoke-virtual/range {v32 .. v32}, Lo1/h;->c()Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-nez v1, :cond_32

    .line 898
    .line 899
    const/4 v1, 0x0

    .line 900
    iput-object v1, v0, Lo1/i;->C:Lo1/h;

    .line 901
    .line 902
    :cond_32
    const/4 v1, 0x3

    .line 903
    iput v1, v0, Lo1/i;->s:I

    .line 904
    .line 905
    goto/16 :goto_b

    .line 906
    .line 907
    :goto_1d
    return v1

    .line 908
    :cond_33
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 909
    .line 910
    .line 911
    move-result v2

    .line 912
    const/4 v3, 0x0

    .line 913
    const/4 v5, 0x0

    .line 914
    :goto_1e
    if-ge v3, v2, :cond_35

    .line 915
    .line 916
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v6

    .line 920
    check-cast v6, Lo1/h;

    .line 921
    .line 922
    iget-object v6, v6, Lo1/h;->b:Lo1/r;

    .line 923
    .line 924
    iget-boolean v7, v6, Lo1/r;->o:Z

    .line 925
    .line 926
    if-eqz v7, :cond_34

    .line 927
    .line 928
    iget-wide v6, v6, Lo1/r;->c:J

    .line 929
    .line 930
    cmp-long v8, v6, v16

    .line 931
    .line 932
    if-gez v8, :cond_34

    .line 933
    .line 934
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    check-cast v5, Lo1/h;

    .line 939
    .line 940
    move-wide/from16 v16, v6

    .line 941
    .line 942
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 943
    .line 944
    goto :goto_1e

    .line 945
    :cond_35
    if-nez v5, :cond_36

    .line 946
    .line 947
    const/4 v2, 0x3

    .line 948
    iput v2, v0, Lo1/i;->s:I

    .line 949
    .line 950
    goto/16 :goto_0

    .line 951
    .line 952
    :cond_36
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 953
    .line 954
    .line 955
    move-result-wide v2

    .line 956
    sub-long v2, v16, v2

    .line 957
    .line 958
    long-to-int v3, v2

    .line 959
    if-ltz v3, :cond_37

    .line 960
    .line 961
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 962
    .line 963
    .line 964
    iget-object v2, v5, Lo1/h;->b:Lo1/r;

    .line 965
    .line 966
    iget-object v3, v2, Lo1/r;->n:Lp0/E;

    .line 967
    .line 968
    iget-object v4, v3, Lp0/E;->a:[B

    .line 969
    .line 970
    iget v5, v3, Lp0/E;->c:I

    .line 971
    .line 972
    const/4 v6, 0x0

    .line 973
    invoke-interface {v1, v4, v6, v5}, LW0/t;->readFully([BII)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v3, v6}, Lp0/E;->L(I)V

    .line 977
    .line 978
    .line 979
    iput-boolean v6, v2, Lo1/r;->o:Z

    .line 980
    .line 981
    goto/16 :goto_0

    .line 982
    .line 983
    :cond_37
    const-string v1, "Offset to encryption data was negative."

    .line 984
    .line 985
    const/4 v2, 0x0

    .line 986
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    throw v1

    .line 991
    :cond_38
    move-object/from16 v31, v6

    .line 992
    .line 993
    move-object v2, v7

    .line 994
    iget-wide v4, v0, Lo1/i;->u:J

    .line 995
    .line 996
    iget v6, v0, Lo1/i;->v:I

    .line 997
    .line 998
    int-to-long v6, v6

    .line 999
    sub-long/2addr v4, v6

    .line 1000
    long-to-int v5, v4

    .line 1001
    iget-object v4, v0, Lo1/i;->w:Lp0/E;

    .line 1002
    .line 1003
    if-eqz v4, :cond_45

    .line 1004
    .line 1005
    iget-object v6, v4, Lp0/E;->a:[B

    .line 1006
    .line 1007
    const/16 v7, 0x8

    .line 1008
    .line 1009
    invoke-interface {v1, v6, v7, v5}, LW0/t;->readFully([BII)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v5, Lq0/d;

    .line 1013
    .line 1014
    iget v6, v0, Lo1/i;->t:I

    .line 1015
    .line 1016
    invoke-direct {v5, v6, v4}, Lq0/d;-><init>(ILp0/E;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v6

    .line 1023
    if-nez v6, :cond_39

    .line 1024
    .line 1025
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    check-cast v2, Lq0/c;

    .line 1030
    .line 1031
    iget-object v2, v2, Lq0/c;->d:Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_23

    .line 1037
    .line 1038
    :cond_39
    iget v3, v5, Lq0/e;->b:I

    .line 1039
    .line 1040
    const v5, 0x73696478

    .line 1041
    .line 1042
    .line 1043
    if-ne v3, v5, :cond_3b

    .line 1044
    .line 1045
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v2

    .line 1049
    invoke-static {v2, v3, v4}, Lo1/i;->k(JLp0/E;)Landroid/util/Pair;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v3, LW0/l;

    .line 1056
    .line 1057
    invoke-virtual {v11, v3}, Le0/u;->a(LW0/l;)V

    .line 1058
    .line 1059
    .line 1060
    iget-boolean v3, v0, Lo1/i;->L:Z

    .line 1061
    .line 1062
    if-nez v3, :cond_3a

    .line 1063
    .line 1064
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1065
    .line 1066
    check-cast v3, Ljava/lang/Long;

    .line 1067
    .line 1068
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1069
    .line 1070
    .line 1071
    move-result-wide v3

    .line 1072
    iput-wide v3, v0, Lo1/i;->B:J

    .line 1073
    .line 1074
    iget-object v3, v0, Lo1/i;->I:LW0/u;

    .line 1075
    .line 1076
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1077
    .line 1078
    check-cast v2, LW0/F;

    .line 1079
    .line 1080
    invoke-interface {v3, v2}, LW0/u;->r(LW0/F;)V

    .line 1081
    .line 1082
    .line 1083
    const/4 v2, 0x1

    .line 1084
    iput-boolean v2, v0, Lo1/i;->L:Z

    .line 1085
    .line 1086
    goto/16 :goto_23

    .line 1087
    .line 1088
    :cond_3a
    const/4 v2, 0x1

    .line 1089
    and-int/lit16 v3, v9, 0x100

    .line 1090
    .line 1091
    if-eqz v3, :cond_46

    .line 1092
    .line 1093
    iget-boolean v3, v0, Lo1/i;->M:Z

    .line 1094
    .line 1095
    if-nez v3, :cond_46

    .line 1096
    .line 1097
    iget-object v3, v11, Le0/u;->a:Ljava/util/Map;

    .line 1098
    .line 1099
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    if-le v3, v2, :cond_46

    .line 1104
    .line 1105
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1106
    .line 1107
    .line 1108
    move-result-wide v2

    .line 1109
    iput-wide v2, v0, Lo1/i;->N:J

    .line 1110
    .line 1111
    goto/16 :goto_23

    .line 1112
    .line 1113
    :cond_3b
    const v5, 0x656d7367

    .line 1114
    .line 1115
    .line 1116
    if-ne v3, v5, :cond_46

    .line 1117
    .line 1118
    iget-object v3, v0, Lo1/i;->J:[LW0/L;

    .line 1119
    .line 1120
    array-length v3, v3

    .line 1121
    if-nez v3, :cond_3c

    .line 1122
    .line 1123
    goto/16 :goto_23

    .line 1124
    .line 1125
    :cond_3c
    const/16 v3, 0x8

    .line 1126
    .line 1127
    invoke-virtual {v4, v3}, Lp0/E;->L(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    invoke-static {v3}, Lo1/e;->e(I)I

    .line 1135
    .line 1136
    .line 1137
    move-result v3

    .line 1138
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    if-eqz v3, :cond_3e

    .line 1144
    .line 1145
    const/4 v7, 0x1

    .line 1146
    if-eq v3, v7, :cond_3d

    .line 1147
    .line 1148
    const-string v2, "Skipping unsupported emsg version: "

    .line 1149
    .line 1150
    invoke-static {v2, v3, v15}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    goto/16 :goto_23

    .line 1154
    .line 1155
    :cond_3d
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1156
    .line 1157
    .line 1158
    move-result-wide v14

    .line 1159
    invoke-virtual {v4}, Lp0/E;->E()J

    .line 1160
    .line 1161
    .line 1162
    move-result-wide v7

    .line 1163
    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1164
    .line 1165
    const-wide/32 v9, 0xf4240

    .line 1166
    .line 1167
    .line 1168
    move-wide v11, v14

    .line 1169
    move-object v13, v3

    .line 1170
    invoke-static/range {v7 .. v13}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 1171
    .line 1172
    .line 1173
    move-result-wide v16

    .line 1174
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1175
    .line 1176
    .line 1177
    move-result-wide v7

    .line 1178
    const-wide/16 v9, 0x3e8

    .line 1179
    .line 1180
    move-wide v11, v14

    .line 1181
    move-object v13, v3

    .line 1182
    invoke-static/range {v7 .. v13}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 1183
    .line 1184
    .line 1185
    move-result-wide v7

    .line 1186
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1187
    .line 1188
    .line 1189
    move-result-wide v9

    .line 1190
    invoke-virtual {v4}, Lp0/E;->u()Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v4}, Lp0/E;->u()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v11

    .line 1201
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    move-object/from16 v33, v3

    .line 1205
    .line 1206
    move-wide/from16 v35, v7

    .line 1207
    .line 1208
    move-wide/from16 v37, v9

    .line 1209
    .line 1210
    move-object/from16 v34, v11

    .line 1211
    .line 1212
    move-wide/from16 v7, v16

    .line 1213
    .line 1214
    move-wide v9, v5

    .line 1215
    goto :goto_20

    .line 1216
    :cond_3e
    invoke-virtual {v4}, Lp0/E;->u()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v4}, Lp0/E;->u()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v11

    .line 1227
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1231
    .line 1232
    .line 1233
    move-result-wide v7

    .line 1234
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1235
    .line 1236
    .line 1237
    move-result-wide v12

    .line 1238
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1239
    .line 1240
    const-wide/32 v14, 0xf4240

    .line 1241
    .line 1242
    .line 1243
    move-wide/from16 v16, v7

    .line 1244
    .line 1245
    move-object/from16 v18, v9

    .line 1246
    .line 1247
    invoke-static/range {v12 .. v18}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v21

    .line 1251
    iget-wide v12, v0, Lo1/i;->B:J

    .line 1252
    .line 1253
    cmp-long v10, v12, v5

    .line 1254
    .line 1255
    if-eqz v10, :cond_3f

    .line 1256
    .line 1257
    add-long v12, v12, v21

    .line 1258
    .line 1259
    move-wide/from16 v23, v12

    .line 1260
    .line 1261
    goto :goto_1f

    .line 1262
    :cond_3f
    move-wide/from16 v23, v5

    .line 1263
    .line 1264
    :goto_1f
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1265
    .line 1266
    .line 1267
    move-result-wide v12

    .line 1268
    const-wide/16 v14, 0x3e8

    .line 1269
    .line 1270
    move-wide/from16 v16, v7

    .line 1271
    .line 1272
    move-object/from16 v18, v9

    .line 1273
    .line 1274
    invoke-static/range {v12 .. v18}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v7

    .line 1278
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 1279
    .line 1280
    .line 1281
    move-result-wide v9

    .line 1282
    move-object/from16 v33, v3

    .line 1283
    .line 1284
    move-wide/from16 v35, v7

    .line 1285
    .line 1286
    move-wide/from16 v37, v9

    .line 1287
    .line 1288
    move-object/from16 v34, v11

    .line 1289
    .line 1290
    move-wide/from16 v9, v21

    .line 1291
    .line 1292
    move-wide/from16 v7, v23

    .line 1293
    .line 1294
    :goto_20
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 1295
    .line 1296
    .line 1297
    move-result v3

    .line 1298
    new-array v3, v3, [B

    .line 1299
    .line 1300
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 1301
    .line 1302
    .line 1303
    move-result v11

    .line 1304
    const/4 v12, 0x0

    .line 1305
    invoke-virtual {v4, v12, v3, v11}, Lp0/E;->j(I[BI)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v4, Lg1/a;

    .line 1309
    .line 1310
    move-object/from16 v32, v4

    .line 1311
    .line 1312
    move-object/from16 v39, v3

    .line 1313
    .line 1314
    invoke-direct/range {v32 .. v39}, Lg1/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 1315
    .line 1316
    .line 1317
    new-instance v3, Lp0/E;

    .line 1318
    .line 1319
    iget-object v11, v0, Lo1/i;->k:LF/i;

    .line 1320
    .line 1321
    invoke-virtual {v11, v4}, LF/i;->c(Lg1/a;)[B

    .line 1322
    .line 1323
    .line 1324
    move-result-object v4

    .line 1325
    invoke-direct {v3, v4}, Lp0/E;-><init>([B)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 1329
    .line 1330
    .line 1331
    move-result v4

    .line 1332
    iget-object v11, v0, Lo1/i;->J:[LW0/L;

    .line 1333
    .line 1334
    array-length v12, v11

    .line 1335
    const/4 v13, 0x0

    .line 1336
    :goto_21
    if-ge v13, v12, :cond_40

    .line 1337
    .line 1338
    aget-object v14, v11, v13

    .line 1339
    .line 1340
    const/4 v15, 0x0

    .line 1341
    invoke-virtual {v3, v15}, Lp0/E;->L(I)V

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {v14, v4, v3}, LW0/L;->e(ILp0/E;)V

    .line 1345
    .line 1346
    .line 1347
    add-int/lit8 v13, v13, 0x1

    .line 1348
    .line 1349
    goto :goto_21

    .line 1350
    :cond_40
    cmp-long v3, v7, v5

    .line 1351
    .line 1352
    if-nez v3, :cond_41

    .line 1353
    .line 1354
    new-instance v2, Lo1/g;

    .line 1355
    .line 1356
    const/4 v3, 0x1

    .line 1357
    invoke-direct {v2, v4, v9, v10, v3}, Lo1/g;-><init>(IJZ)V

    .line 1358
    .line 1359
    .line 1360
    move-object/from16 v3, v31

    .line 1361
    .line 1362
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1363
    .line 1364
    .line 1365
    iget v2, v0, Lo1/i;->y:I

    .line 1366
    .line 1367
    add-int/2addr v2, v4

    .line 1368
    iput v2, v0, Lo1/i;->y:I

    .line 1369
    .line 1370
    goto :goto_23

    .line 1371
    :cond_41
    move-object/from16 v3, v31

    .line 1372
    .line 1373
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1374
    .line 1375
    .line 1376
    move-result v5

    .line 1377
    if-nez v5, :cond_42

    .line 1378
    .line 1379
    new-instance v2, Lo1/g;

    .line 1380
    .line 1381
    const/4 v5, 0x0

    .line 1382
    invoke-direct {v2, v4, v7, v8, v5}, Lo1/g;-><init>(IJZ)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1386
    .line 1387
    .line 1388
    iget v2, v0, Lo1/i;->y:I

    .line 1389
    .line 1390
    add-int/2addr v2, v4

    .line 1391
    iput v2, v0, Lo1/i;->y:I

    .line 1392
    .line 1393
    goto :goto_23

    .line 1394
    :cond_42
    const/4 v5, 0x0

    .line 1395
    if-eqz v2, :cond_43

    .line 1396
    .line 1397
    invoke-virtual {v2}, Lp0/J;->f()Z

    .line 1398
    .line 1399
    .line 1400
    move-result v6

    .line 1401
    if-nez v6, :cond_43

    .line 1402
    .line 1403
    new-instance v2, Lo1/g;

    .line 1404
    .line 1405
    invoke-direct {v2, v4, v7, v8, v5}, Lo1/g;-><init>(IJZ)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1409
    .line 1410
    .line 1411
    iget v2, v0, Lo1/i;->y:I

    .line 1412
    .line 1413
    add-int/2addr v2, v4

    .line 1414
    iput v2, v0, Lo1/i;->y:I

    .line 1415
    .line 1416
    goto :goto_23

    .line 1417
    :cond_43
    if-eqz v2, :cond_44

    .line 1418
    .line 1419
    invoke-virtual {v2, v7, v8}, Lp0/J;->a(J)J

    .line 1420
    .line 1421
    .line 1422
    move-result-wide v7

    .line 1423
    :cond_44
    iget-object v2, v0, Lo1/i;->J:[LW0/L;

    .line 1424
    .line 1425
    array-length v3, v2

    .line 1426
    const/4 v5, 0x0

    .line 1427
    :goto_22
    if-ge v5, v3, :cond_46

    .line 1428
    .line 1429
    aget-object v11, v2, v5

    .line 1430
    .line 1431
    const/16 v17, 0x0

    .line 1432
    .line 1433
    const/4 v14, 0x1

    .line 1434
    const/16 v16, 0x0

    .line 1435
    .line 1436
    move-wide v12, v7

    .line 1437
    move v15, v4

    .line 1438
    invoke-interface/range {v11 .. v17}, LW0/L;->d(JIIILW0/K;)V

    .line 1439
    .line 1440
    .line 1441
    add-int/lit8 v5, v5, 0x1

    .line 1442
    .line 1443
    goto :goto_22

    .line 1444
    :cond_45
    invoke-interface {v1, v5}, LW0/t;->n(I)V

    .line 1445
    .line 1446
    .line 1447
    :cond_46
    :goto_23
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1448
    .line 1449
    .line 1450
    move-result-wide v2

    .line 1451
    invoke-virtual {v0, v2, v3}, Lo1/i;->l(J)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_0

    .line 1455
    .line 1456
    :cond_47
    iget v2, v0, Lo1/i;->v:I

    .line 1457
    .line 1458
    const-wide/16 v5, 0x0

    .line 1459
    .line 1460
    const-wide/16 v12, -0x1

    .line 1461
    .line 1462
    iget-object v7, v0, Lo1/i;->l:Lp0/E;

    .line 1463
    .line 1464
    if-nez v2, :cond_4e

    .line 1465
    .line 1466
    iget-object v2, v7, Lp0/E;->a:[B

    .line 1467
    .line 1468
    const/4 v9, 0x1

    .line 1469
    const/16 v14, 0x8

    .line 1470
    .line 1471
    const/4 v15, 0x0

    .line 1472
    invoke-interface {v1, v2, v15, v14, v9}, LW0/t;->b([BIIZ)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v2

    .line 1476
    if-nez v2, :cond_4d

    .line 1477
    .line 1478
    iget-wide v1, v0, Lo1/i;->N:J

    .line 1479
    .line 1480
    cmp-long v3, v1, v12

    .line 1481
    .line 1482
    if-eqz v3, :cond_4c

    .line 1483
    .line 1484
    move-object/from16 v9, p2

    .line 1485
    .line 1486
    iput-wide v1, v9, LW0/w;->a:J

    .line 1487
    .line 1488
    iput-wide v12, v0, Lo1/i;->N:J

    .line 1489
    .line 1490
    iget-object v1, v0, Lo1/i;->I:LW0/u;

    .line 1491
    .line 1492
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1493
    .line 1494
    .line 1495
    new-instance v2, Ljava/util/ArrayList;

    .line 1496
    .line 1497
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .line 1499
    .line 1500
    new-instance v3, Ljava/util/ArrayList;

    .line 1501
    .line 1502
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .line 1504
    .line 1505
    new-instance v4, Ljava/util/ArrayList;

    .line 1506
    .line 1507
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    .line 1509
    .line 1510
    new-instance v7, Ljava/util/ArrayList;

    .line 1511
    .line 1512
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .line 1514
    .line 1515
    iget-object v8, v11, Le0/u;->a:Ljava/util/Map;

    .line 1516
    .line 1517
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v8

    .line 1521
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v8

    .line 1525
    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1526
    .line 1527
    .line 1528
    move-result v9

    .line 1529
    if-eqz v9, :cond_48

    .line 1530
    .line 1531
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v9

    .line 1535
    check-cast v9, LW0/l;

    .line 1536
    .line 1537
    iget-object v10, v9, LW0/l;->b:[I

    .line 1538
    .line 1539
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    iget-object v10, v9, LW0/l;->c:[J

    .line 1543
    .line 1544
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    .line 1546
    .line 1547
    iget-object v10, v9, LW0/l;->d:[J

    .line 1548
    .line 1549
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    .line 1551
    .line 1552
    iget-object v9, v9, LW0/l;->e:[J

    .line 1553
    .line 1554
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    .line 1556
    .line 1557
    goto :goto_24

    .line 1558
    :cond_48
    new-instance v8, LW0/l;

    .line 1559
    .line 1560
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1561
    .line 1562
    .line 1563
    move-result v9

    .line 1564
    new-array v9, v9, [[I

    .line 1565
    .line 1566
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v2

    .line 1570
    check-cast v2, [[I

    .line 1571
    .line 1572
    array-length v9, v2

    .line 1573
    const/4 v10, 0x0

    .line 1574
    :goto_25
    if-ge v10, v9, :cond_49

    .line 1575
    .line 1576
    aget-object v11, v2, v10

    .line 1577
    .line 1578
    array-length v11, v11

    .line 1579
    int-to-long v11, v11

    .line 1580
    add-long/2addr v5, v11

    .line 1581
    add-int/lit8 v10, v10, 0x1

    .line 1582
    .line 1583
    goto :goto_25

    .line 1584
    :cond_49
    long-to-int v9, v5

    .line 1585
    int-to-long v10, v9

    .line 1586
    cmp-long v12, v5, v10

    .line 1587
    .line 1588
    if-nez v12, :cond_4a

    .line 1589
    .line 1590
    const/4 v10, 0x1

    .line 1591
    goto :goto_26

    .line 1592
    :cond_4a
    const/4 v10, 0x0

    .line 1593
    :goto_26
    const-string v11, "the total number of elements (%s) in the arrays must fit in an int"

    .line 1594
    .line 1595
    invoke-static {v5, v6, v11, v10}, Ly4/k;->n(JLjava/lang/String;Z)V

    .line 1596
    .line 1597
    .line 1598
    new-array v5, v9, [I

    .line 1599
    .line 1600
    array-length v6, v2

    .line 1601
    const/4 v9, 0x0

    .line 1602
    const/4 v10, 0x0

    .line 1603
    :goto_27
    if-ge v9, v6, :cond_4b

    .line 1604
    .line 1605
    aget-object v11, v2, v9

    .line 1606
    .line 1607
    array-length v12, v11

    .line 1608
    const/4 v13, 0x0

    .line 1609
    invoke-static {v11, v13, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1610
    .line 1611
    .line 1612
    array-length v11, v11

    .line 1613
    add-int/2addr v10, v11

    .line 1614
    add-int/lit8 v9, v9, 0x1

    .line 1615
    .line 1616
    goto :goto_27

    .line 1617
    :cond_4b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1618
    .line 1619
    .line 1620
    move-result v2

    .line 1621
    new-array v2, v2, [[J

    .line 1622
    .line 1623
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v2

    .line 1627
    check-cast v2, [[J

    .line 1628
    .line 1629
    invoke-static {v2}, Lz4/q0;->m([[J)[J

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1634
    .line 1635
    .line 1636
    move-result v3

    .line 1637
    new-array v3, v3, [[J

    .line 1638
    .line 1639
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v3

    .line 1643
    check-cast v3, [[J

    .line 1644
    .line 1645
    invoke-static {v3}, Lz4/q0;->m([[J)[J

    .line 1646
    .line 1647
    .line 1648
    move-result-object v3

    .line 1649
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1650
    .line 1651
    .line 1652
    move-result v4

    .line 1653
    new-array v4, v4, [[J

    .line 1654
    .line 1655
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v4

    .line 1659
    check-cast v4, [[J

    .line 1660
    .line 1661
    invoke-static {v4}, Lz4/q0;->m([[J)[J

    .line 1662
    .line 1663
    .line 1664
    move-result-object v4

    .line 1665
    invoke-direct {v8, v5, v2, v3, v4}, LW0/l;-><init>([I[J[J[J)V

    .line 1666
    .line 1667
    .line 1668
    invoke-interface {v1, v8}, LW0/u;->r(LW0/F;)V

    .line 1669
    .line 1670
    .line 1671
    const/4 v1, 0x1

    .line 1672
    iput-boolean v1, v0, Lo1/i;->M:Z

    .line 1673
    .line 1674
    return v1

    .line 1675
    :cond_4c
    const/4 v2, 0x0

    .line 1676
    invoke-virtual {v8, v2}, Ll/s;->c(I)V

    .line 1677
    .line 1678
    .line 1679
    const/4 v1, -0x1

    .line 1680
    return v1

    .line 1681
    :cond_4d
    move-object/from16 v9, p2

    .line 1682
    .line 1683
    const/4 v2, 0x0

    .line 1684
    const/16 v8, 0x8

    .line 1685
    .line 1686
    iput v8, v0, Lo1/i;->v:I

    .line 1687
    .line 1688
    invoke-virtual {v7, v2}, Lp0/E;->L(I)V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v7}, Lp0/E;->B()J

    .line 1692
    .line 1693
    .line 1694
    move-result-wide v14

    .line 1695
    iput-wide v14, v0, Lo1/i;->u:J

    .line 1696
    .line 1697
    invoke-virtual {v7}, Lp0/E;->l()I

    .line 1698
    .line 1699
    .line 1700
    move-result v2

    .line 1701
    iput v2, v0, Lo1/i;->t:I

    .line 1702
    .line 1703
    goto :goto_28

    .line 1704
    :cond_4e
    move-object/from16 v9, p2

    .line 1705
    .line 1706
    :goto_28
    iget-wide v14, v0, Lo1/i;->u:J

    .line 1707
    .line 1708
    const-wide/16 v24, 0x1

    .line 1709
    .line 1710
    cmp-long v2, v14, v24

    .line 1711
    .line 1712
    if-nez v2, :cond_4f

    .line 1713
    .line 1714
    iget-object v2, v7, Lp0/E;->a:[B

    .line 1715
    .line 1716
    const/16 v5, 0x8

    .line 1717
    .line 1718
    invoke-interface {v1, v2, v5, v5}, LW0/t;->readFully([BII)V

    .line 1719
    .line 1720
    .line 1721
    iget v2, v0, Lo1/i;->v:I

    .line 1722
    .line 1723
    add-int/2addr v2, v5

    .line 1724
    iput v2, v0, Lo1/i;->v:I

    .line 1725
    .line 1726
    invoke-virtual {v7}, Lp0/E;->E()J

    .line 1727
    .line 1728
    .line 1729
    move-result-wide v5

    .line 1730
    iput-wide v5, v0, Lo1/i;->u:J

    .line 1731
    .line 1732
    goto :goto_29

    .line 1733
    :cond_4f
    cmp-long v2, v14, v5

    .line 1734
    .line 1735
    if-nez v2, :cond_51

    .line 1736
    .line 1737
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 1738
    .line 1739
    .line 1740
    move-result-wide v5

    .line 1741
    cmp-long v2, v5, v12

    .line 1742
    .line 1743
    if-nez v2, :cond_50

    .line 1744
    .line 1745
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1746
    .line 1747
    .line 1748
    move-result v2

    .line 1749
    if-nez v2, :cond_50

    .line 1750
    .line 1751
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v2

    .line 1755
    check-cast v2, Lq0/c;

    .line 1756
    .line 1757
    iget-wide v5, v2, Lq0/c;->c:J

    .line 1758
    .line 1759
    :cond_50
    cmp-long v2, v5, v12

    .line 1760
    .line 1761
    if-eqz v2, :cond_51

    .line 1762
    .line 1763
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1764
    .line 1765
    .line 1766
    move-result-wide v14

    .line 1767
    sub-long/2addr v5, v14

    .line 1768
    iget v2, v0, Lo1/i;->v:I

    .line 1769
    .line 1770
    int-to-long v14, v2

    .line 1771
    add-long/2addr v5, v14

    .line 1772
    iput-wide v5, v0, Lo1/i;->u:J

    .line 1773
    .line 1774
    :cond_51
    :goto_29
    iget-wide v5, v0, Lo1/i;->u:J

    .line 1775
    .line 1776
    iget v2, v0, Lo1/i;->v:I

    .line 1777
    .line 1778
    int-to-long v14, v2

    .line 1779
    cmp-long v2, v5, v14

    .line 1780
    .line 1781
    if-ltz v2, :cond_61

    .line 1782
    .line 1783
    iget-wide v8, v0, Lo1/i;->N:J

    .line 1784
    .line 1785
    cmp-long v2, v8, v12

    .line 1786
    .line 1787
    if-eqz v2, :cond_53

    .line 1788
    .line 1789
    iget v2, v0, Lo1/i;->t:I

    .line 1790
    .line 1791
    const v3, 0x73696478

    .line 1792
    .line 1793
    .line 1794
    if-ne v2, v3, :cond_52

    .line 1795
    .line 1796
    long-to-int v2, v5

    .line 1797
    invoke-virtual {v10, v2}, Lp0/E;->I(I)V

    .line 1798
    .line 1799
    .line 1800
    iget-object v2, v7, Lp0/E;->a:[B

    .line 1801
    .line 1802
    iget-object v3, v10, Lp0/E;->a:[B

    .line 1803
    .line 1804
    const/16 v4, 0x8

    .line 1805
    .line 1806
    const/4 v5, 0x0

    .line 1807
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1808
    .line 1809
    .line 1810
    iget-object v2, v10, Lp0/E;->a:[B

    .line 1811
    .line 1812
    iget-wide v5, v0, Lo1/i;->u:J

    .line 1813
    .line 1814
    iget v3, v0, Lo1/i;->v:I

    .line 1815
    .line 1816
    int-to-long v7, v3

    .line 1817
    sub-long/2addr v5, v7

    .line 1818
    long-to-int v3, v5

    .line 1819
    invoke-interface {v1, v2, v4, v3}, LW0/t;->readFully([BII)V

    .line 1820
    .line 1821
    .line 1822
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 1823
    .line 1824
    .line 1825
    move-result-wide v2

    .line 1826
    invoke-static {v2, v3, v10}, Lo1/i;->k(JLp0/E;)Landroid/util/Pair;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v2

    .line 1830
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1831
    .line 1832
    check-cast v2, LW0/l;

    .line 1833
    .line 1834
    invoke-virtual {v11, v2}, Le0/u;->a(LW0/l;)V

    .line 1835
    .line 1836
    .line 1837
    goto :goto_2a

    .line 1838
    :cond_52
    sub-long/2addr v5, v14

    .line 1839
    long-to-int v2, v5

    .line 1840
    const/4 v3, 0x1

    .line 1841
    invoke-interface {v1, v2, v3}, LW0/t;->d(IZ)Z

    .line 1842
    .line 1843
    .line 1844
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lo1/i;->c()V

    .line 1845
    .line 1846
    .line 1847
    goto/16 :goto_0

    .line 1848
    .line 1849
    :cond_53
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1850
    .line 1851
    .line 1852
    move-result-wide v5

    .line 1853
    iget v2, v0, Lo1/i;->v:I

    .line 1854
    .line 1855
    int-to-long v8, v2

    .line 1856
    sub-long/2addr v5, v8

    .line 1857
    iget v2, v0, Lo1/i;->t:I

    .line 1858
    .line 1859
    const v8, 0x6d646174

    .line 1860
    .line 1861
    .line 1862
    const v9, 0x6d6f6f66

    .line 1863
    .line 1864
    .line 1865
    if-eq v2, v9, :cond_54

    .line 1866
    .line 1867
    if-ne v2, v8, :cond_55

    .line 1868
    .line 1869
    :cond_54
    iget-boolean v2, v0, Lo1/i;->L:Z

    .line 1870
    .line 1871
    if-nez v2, :cond_55

    .line 1872
    .line 1873
    iget-object v2, v0, Lo1/i;->I:LW0/u;

    .line 1874
    .line 1875
    new-instance v11, LW0/x;

    .line 1876
    .line 1877
    iget-wide v12, v0, Lo1/i;->A:J

    .line 1878
    .line 1879
    invoke-direct {v11, v12, v13, v5, v6}, LW0/x;-><init>(JJ)V

    .line 1880
    .line 1881
    .line 1882
    invoke-interface {v2, v11}, LW0/u;->r(LW0/F;)V

    .line 1883
    .line 1884
    .line 1885
    const/4 v2, 0x1

    .line 1886
    iput-boolean v2, v0, Lo1/i;->L:Z

    .line 1887
    .line 1888
    :cond_55
    iget v2, v0, Lo1/i;->t:I

    .line 1889
    .line 1890
    if-ne v2, v9, :cond_56

    .line 1891
    .line 1892
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1893
    .line 1894
    .line 1895
    move-result v2

    .line 1896
    const/4 v11, 0x0

    .line 1897
    :goto_2b
    if-ge v11, v2, :cond_56

    .line 1898
    .line 1899
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v12

    .line 1903
    check-cast v12, Lo1/h;

    .line 1904
    .line 1905
    iget-object v12, v12, Lo1/h;->b:Lo1/r;

    .line 1906
    .line 1907
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    .line 1909
    .line 1910
    iput-wide v5, v12, Lo1/r;->c:J

    .line 1911
    .line 1912
    iput-wide v5, v12, Lo1/r;->b:J

    .line 1913
    .line 1914
    add-int/lit8 v11, v11, 0x1

    .line 1915
    .line 1916
    goto :goto_2b

    .line 1917
    :cond_56
    iget v2, v0, Lo1/i;->t:I

    .line 1918
    .line 1919
    if-ne v2, v8, :cond_57

    .line 1920
    .line 1921
    const/4 v4, 0x0

    .line 1922
    iput-object v4, v0, Lo1/i;->C:Lo1/h;

    .line 1923
    .line 1924
    iget-wide v2, v0, Lo1/i;->u:J

    .line 1925
    .line 1926
    add-long/2addr v5, v2

    .line 1927
    iput-wide v5, v0, Lo1/i;->x:J

    .line 1928
    .line 1929
    const/4 v2, 0x2

    .line 1930
    iput v2, v0, Lo1/i;->s:I

    .line 1931
    .line 1932
    goto/16 :goto_0

    .line 1933
    .line 1934
    :cond_57
    const v4, 0x6d6f6f76

    .line 1935
    .line 1936
    .line 1937
    const v5, 0x6d657461

    .line 1938
    .line 1939
    .line 1940
    if-eq v2, v4, :cond_5e

    .line 1941
    .line 1942
    const v4, 0x7472616b

    .line 1943
    .line 1944
    .line 1945
    if-eq v2, v4, :cond_5e

    .line 1946
    .line 1947
    const v4, 0x6d646961

    .line 1948
    .line 1949
    .line 1950
    if-eq v2, v4, :cond_5e

    .line 1951
    .line 1952
    const v4, 0x6d696e66

    .line 1953
    .line 1954
    .line 1955
    if-eq v2, v4, :cond_5e

    .line 1956
    .line 1957
    const v4, 0x7374626c

    .line 1958
    .line 1959
    .line 1960
    if-eq v2, v4, :cond_5e

    .line 1961
    .line 1962
    if-eq v2, v9, :cond_5e

    .line 1963
    .line 1964
    const v4, 0x74726166

    .line 1965
    .line 1966
    .line 1967
    if-eq v2, v4, :cond_5e

    .line 1968
    .line 1969
    const v4, 0x6d766578

    .line 1970
    .line 1971
    .line 1972
    if-eq v2, v4, :cond_5e

    .line 1973
    .line 1974
    const v4, 0x65647473

    .line 1975
    .line 1976
    .line 1977
    if-eq v2, v4, :cond_5e

    .line 1978
    .line 1979
    if-ne v2, v5, :cond_58

    .line 1980
    .line 1981
    goto/16 :goto_2d

    .line 1982
    .line 1983
    :cond_58
    const v3, 0x68646c72    # 4.3148E24f

    .line 1984
    .line 1985
    .line 1986
    const-wide/32 v4, 0x7fffffff

    .line 1987
    .line 1988
    .line 1989
    if-eq v2, v3, :cond_5b

    .line 1990
    .line 1991
    const v3, 0x6d646864

    .line 1992
    .line 1993
    .line 1994
    if-eq v2, v3, :cond_5b

    .line 1995
    .line 1996
    const v3, 0x6d766864

    .line 1997
    .line 1998
    .line 1999
    if-eq v2, v3, :cond_5b

    .line 2000
    .line 2001
    const v3, 0x73696478

    .line 2002
    .line 2003
    .line 2004
    if-eq v2, v3, :cond_5b

    .line 2005
    .line 2006
    const v3, 0x73747364

    .line 2007
    .line 2008
    .line 2009
    if-eq v2, v3, :cond_5b

    .line 2010
    .line 2011
    const v3, 0x73747473

    .line 2012
    .line 2013
    .line 2014
    if-eq v2, v3, :cond_5b

    .line 2015
    .line 2016
    const v3, 0x63747473

    .line 2017
    .line 2018
    .line 2019
    if-eq v2, v3, :cond_5b

    .line 2020
    .line 2021
    const v3, 0x73747363

    .line 2022
    .line 2023
    .line 2024
    if-eq v2, v3, :cond_5b

    .line 2025
    .line 2026
    const v3, 0x7374737a

    .line 2027
    .line 2028
    .line 2029
    if-eq v2, v3, :cond_5b

    .line 2030
    .line 2031
    const v3, 0x73747a32

    .line 2032
    .line 2033
    .line 2034
    if-eq v2, v3, :cond_5b

    .line 2035
    .line 2036
    const v3, 0x7374636f

    .line 2037
    .line 2038
    .line 2039
    if-eq v2, v3, :cond_5b

    .line 2040
    .line 2041
    const v3, 0x636f3634

    .line 2042
    .line 2043
    .line 2044
    if-eq v2, v3, :cond_5b

    .line 2045
    .line 2046
    const v3, 0x73747373

    .line 2047
    .line 2048
    .line 2049
    if-eq v2, v3, :cond_5b

    .line 2050
    .line 2051
    const v3, 0x74666474

    .line 2052
    .line 2053
    .line 2054
    if-eq v2, v3, :cond_5b

    .line 2055
    .line 2056
    const v3, 0x74666864

    .line 2057
    .line 2058
    .line 2059
    if-eq v2, v3, :cond_5b

    .line 2060
    .line 2061
    const v3, 0x746b6864

    .line 2062
    .line 2063
    .line 2064
    if-eq v2, v3, :cond_5b

    .line 2065
    .line 2066
    const v3, 0x74726578

    .line 2067
    .line 2068
    .line 2069
    if-eq v2, v3, :cond_5b

    .line 2070
    .line 2071
    const v3, 0x7472756e

    .line 2072
    .line 2073
    .line 2074
    if-eq v2, v3, :cond_5b

    .line 2075
    .line 2076
    const v3, 0x70737368    # 3.013775E29f

    .line 2077
    .line 2078
    .line 2079
    if-eq v2, v3, :cond_5b

    .line 2080
    .line 2081
    const v3, 0x7361697a

    .line 2082
    .line 2083
    .line 2084
    if-eq v2, v3, :cond_5b

    .line 2085
    .line 2086
    const v3, 0x7361696f

    .line 2087
    .line 2088
    .line 2089
    if-eq v2, v3, :cond_5b

    .line 2090
    .line 2091
    const v3, 0x73656e63

    .line 2092
    .line 2093
    .line 2094
    if-eq v2, v3, :cond_5b

    .line 2095
    .line 2096
    const v3, 0x75756964

    .line 2097
    .line 2098
    .line 2099
    if-eq v2, v3, :cond_5b

    .line 2100
    .line 2101
    const v3, 0x73626770

    .line 2102
    .line 2103
    .line 2104
    if-eq v2, v3, :cond_5b

    .line 2105
    .line 2106
    const v3, 0x73677064

    .line 2107
    .line 2108
    .line 2109
    if-eq v2, v3, :cond_5b

    .line 2110
    .line 2111
    const v3, 0x656c7374

    .line 2112
    .line 2113
    .line 2114
    if-eq v2, v3, :cond_5b

    .line 2115
    .line 2116
    const v3, 0x6d656864

    .line 2117
    .line 2118
    .line 2119
    if-eq v2, v3, :cond_5b

    .line 2120
    .line 2121
    const v3, 0x656d7367

    .line 2122
    .line 2123
    .line 2124
    if-eq v2, v3, :cond_5b

    .line 2125
    .line 2126
    const v3, 0x75647461

    .line 2127
    .line 2128
    .line 2129
    if-eq v2, v3, :cond_5b

    .line 2130
    .line 2131
    const v3, 0x6b657973

    .line 2132
    .line 2133
    .line 2134
    if-eq v2, v3, :cond_5b

    .line 2135
    .line 2136
    const v3, 0x696c7374

    .line 2137
    .line 2138
    .line 2139
    if-ne v2, v3, :cond_59

    .line 2140
    .line 2141
    goto :goto_2c

    .line 2142
    :cond_59
    iget-wide v2, v0, Lo1/i;->u:J

    .line 2143
    .line 2144
    cmp-long v6, v2, v4

    .line 2145
    .line 2146
    if-gtz v6, :cond_5a

    .line 2147
    .line 2148
    const/4 v2, 0x0

    .line 2149
    iput-object v2, v0, Lo1/i;->w:Lp0/E;

    .line 2150
    .line 2151
    const/4 v2, 0x1

    .line 2152
    iput v2, v0, Lo1/i;->s:I

    .line 2153
    .line 2154
    goto/16 :goto_0

    .line 2155
    .line 2156
    :cond_5a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 2157
    .line 2158
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v1

    .line 2162
    throw v1

    .line 2163
    :cond_5b
    :goto_2c
    iget v2, v0, Lo1/i;->v:I

    .line 2164
    .line 2165
    const/16 v3, 0x8

    .line 2166
    .line 2167
    if-ne v2, v3, :cond_5d

    .line 2168
    .line 2169
    iget-wide v2, v0, Lo1/i;->u:J

    .line 2170
    .line 2171
    cmp-long v6, v2, v4

    .line 2172
    .line 2173
    if-gtz v6, :cond_5c

    .line 2174
    .line 2175
    new-instance v2, Lp0/E;

    .line 2176
    .line 2177
    iget-wide v3, v0, Lo1/i;->u:J

    .line 2178
    .line 2179
    long-to-int v4, v3

    .line 2180
    invoke-direct {v2, v4}, Lp0/E;-><init>(I)V

    .line 2181
    .line 2182
    .line 2183
    iget-object v3, v7, Lp0/E;->a:[B

    .line 2184
    .line 2185
    iget-object v4, v2, Lp0/E;->a:[B

    .line 2186
    .line 2187
    const/16 v5, 0x8

    .line 2188
    .line 2189
    const/4 v6, 0x0

    .line 2190
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2191
    .line 2192
    .line 2193
    iput-object v2, v0, Lo1/i;->w:Lp0/E;

    .line 2194
    .line 2195
    const/4 v2, 0x1

    .line 2196
    iput v2, v0, Lo1/i;->s:I

    .line 2197
    .line 2198
    goto/16 :goto_0

    .line 2199
    .line 2200
    :cond_5c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 2201
    .line 2202
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v1

    .line 2206
    throw v1

    .line 2207
    :cond_5d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 2208
    .line 2209
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v1

    .line 2213
    throw v1

    .line 2214
    :cond_5e
    :goto_2d
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 2215
    .line 2216
    .line 2217
    move-result-wide v6

    .line 2218
    iget-wide v8, v0, Lo1/i;->u:J

    .line 2219
    .line 2220
    add-long/2addr v6, v8

    .line 2221
    const-wide/16 v11, 0x8

    .line 2222
    .line 2223
    sub-long/2addr v6, v11

    .line 2224
    iget v2, v0, Lo1/i;->v:I

    .line 2225
    .line 2226
    int-to-long v11, v2

    .line 2227
    cmp-long v2, v8, v11

    .line 2228
    .line 2229
    if-eqz v2, :cond_5f

    .line 2230
    .line 2231
    iget v2, v0, Lo1/i;->t:I

    .line 2232
    .line 2233
    if-ne v2, v5, :cond_5f

    .line 2234
    .line 2235
    const/16 v2, 0x8

    .line 2236
    .line 2237
    invoke-virtual {v10, v2}, Lp0/E;->I(I)V

    .line 2238
    .line 2239
    .line 2240
    iget-object v4, v10, Lp0/E;->a:[B

    .line 2241
    .line 2242
    const/4 v5, 0x0

    .line 2243
    invoke-interface {v1, v5, v4, v2}, LW0/t;->c(I[BI)V

    .line 2244
    .line 2245
    .line 2246
    invoke-static {v10}, Lo1/e;->a(Lp0/E;)V

    .line 2247
    .line 2248
    .line 2249
    iget v2, v10, Lp0/E;->b:I

    .line 2250
    .line 2251
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 2252
    .line 2253
    .line 2254
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 2255
    .line 2256
    .line 2257
    :cond_5f
    new-instance v2, Lq0/c;

    .line 2258
    .line 2259
    iget v4, v0, Lo1/i;->t:I

    .line 2260
    .line 2261
    invoke-direct {v2, v4, v6, v7}, Lq0/c;-><init>(IJ)V

    .line 2262
    .line 2263
    .line 2264
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2265
    .line 2266
    .line 2267
    iget-wide v2, v0, Lo1/i;->u:J

    .line 2268
    .line 2269
    iget v4, v0, Lo1/i;->v:I

    .line 2270
    .line 2271
    int-to-long v4, v4

    .line 2272
    cmp-long v8, v2, v4

    .line 2273
    .line 2274
    if-nez v8, :cond_60

    .line 2275
    .line 2276
    invoke-virtual {v0, v6, v7}, Lo1/i;->l(J)V

    .line 2277
    .line 2278
    .line 2279
    goto/16 :goto_0

    .line 2280
    .line 2281
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lo1/i;->c()V

    .line 2282
    .line 2283
    .line 2284
    goto/16 :goto_0

    .line 2285
    .line 2286
    :cond_61
    const-string v1, "Atom size less than header length (unsupported)."

    .line 2287
    .line 2288
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v1

    .line 2292
    throw v1
.end method

.method public final i(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo1/i;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lo1/h;

    .line 16
    .line 17
    invoke-virtual {v2}, Lo1/h;->e()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lo1/i;->n:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lo1/i;->y:I

    .line 29
    .line 30
    iget-object p1, p0, Lo1/i;->o:Ll/s;

    .line 31
    .line 32
    iget-object p1, p1, Ll/s;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/util/PriorityQueue;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    .line 37
    .line 38
    .line 39
    iput-wide p3, p0, Lo1/i;->z:J

    .line 40
    .line 41
    iget-object p1, p0, Lo1/i;->m:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lo1/i;->c()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->r:Lz4/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(J)V
    .locals 57

    .line 1
    move-object/from16 v0, p0

    :goto_0
    const/4 v6, 0x1

    .line 2
    iget-object v7, v0, Lo1/i;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_61

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq0/c;

    iget-wide v8, v8, Lq0/c;->c:J

    cmp-long v10, v8, p1

    if-nez v10, :cond_61

    .line 3
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lq0/c;

    .line 4
    iget v8, v9, Lq0/e;->b:I

    iget-object v15, v0, Lo1/i;->d:Landroid/util/SparseArray;

    iget-object v10, v9, Lq0/c;->d:Ljava/util/ArrayList;

    const v12, 0x6d6f6f76

    iget v13, v0, Lo1/i;->b:I

    const/16 v14, 0xc

    if-ne v8, v12, :cond_f

    .line 5
    invoke-static {v10}, Lo1/i;->e(Ljava/util/ArrayList;)Lm0/n;

    move-result-object v7

    const v8, 0x6d766578

    .line 6
    invoke-virtual {v9, v8}, Lq0/c;->e(I)Lq0/c;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iget-object v8, v8, Lq0/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    .line 10
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Lq0/d;

    .line 11
    iget v5, v1, Lq0/e;->b:I

    const v2, 0x74726578

    iget-object v1, v1, Lq0/d;->c:Lp0/E;

    if-ne v5, v2, :cond_0

    .line 12
    invoke-virtual {v1, v14}, Lp0/E;->L(I)V

    .line 13
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v2

    .line 14
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v5

    sub-int/2addr v5, v6

    .line 15
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v14

    .line 16
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v6

    .line 17
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v8

    new-instance v8, Lo1/f;

    invoke-direct {v8, v5, v14, v6, v1}, Lo1/f;-><init>(IIII)V

    .line 19
    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 20
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo1/f;

    invoke-virtual {v12, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_0
    move-object/from16 v23, v8

    const v2, 0x6d656864

    if-ne v5, v2, :cond_2

    const/16 v2, 0x8

    .line 21
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 22
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v2

    .line 23
    invoke-static {v2}, Lo1/e;->e(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-virtual {v1}, Lp0/E;->B()J

    move-result-wide v1

    :goto_2
    move-wide v3, v1

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lp0/E;->E()J

    move-result-wide v1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v1, 0x1

    add-int/2addr v11, v1

    move-object/from16 v8, v23

    const/4 v6, 0x1

    const/16 v14, 0xc

    goto :goto_1

    :cond_3
    const v1, 0x6d657461

    .line 25
    invoke-virtual {v9, v1}, Lq0/c;->e(I)Lq0/c;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    invoke-static {v1}, Lo1/e;->f(Lq0/c;)Lm0/N;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 27
    :goto_4
    new-instance v2, LW0/A;

    invoke-direct {v2}, LW0/A;-><init>()V

    const v5, 0x75647461

    .line 28
    invoke-virtual {v9, v5}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 29
    invoke-static {v5}, Lo1/e;->k(Lq0/d;)Lm0/N;

    move-result-object v11

    .line 30
    invoke-virtual {v2, v11}, LW0/A;->b(Lm0/N;)V

    move-object v5, v11

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 31
    :goto_5
    new-instance v6, Lm0/N;

    const v8, 0x6d766864

    .line 32
    invoke-virtual {v9, v8}, Lq0/c;->f(I)Lq0/d;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget-object v8, v8, Lq0/d;->c:Lp0/E;

    invoke-static {v8}, Lo1/e;->g(Lp0/E;)Lq0/g;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Lm0/M;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-direct {v6, v11}, Lm0/N;-><init>([Lm0/M;)V

    const/16 v8, 0x10

    and-int/lit8 v10, v13, 0x10

    if-eqz v10, :cond_6

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 35
    :goto_6
    new-instance v8, LB0/K0;

    invoke-direct {v8, v0}, LB0/K0;-><init>(Ljava/lang/Object;)V

    const/16 v16, 0x0

    move-object v10, v2

    move-object v13, v12

    move-wide v11, v3

    move-object v3, v13

    move-object v13, v7

    move-object v4, v15

    move/from16 v15, v16

    move-object/from16 v16, v8

    .line 36
    invoke-static/range {v9 .. v16}, Lo1/e;->j(Lq0/c;LW0/A;JLm0/n;ZZLy4/h;)Ljava/util/ArrayList;

    move-result-object v7

    .line 37
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 38
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 39
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->p(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_a

    .line 40
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo1/s;

    .line 41
    iget-object v12, v11, Lo1/s;->a:Lo1/p;

    .line 42
    iget-object v13, v0, Lo1/i;->I:LW0/u;

    iget v14, v12, Lo1/p;->b:I

    invoke-interface {v13, v10, v14}, LW0/u;->t(II)LW0/L;

    move-result-object v13

    .line 43
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget-object v14, v12, Lo1/p;->g:Lm0/t;

    invoke-virtual {v14}, Lm0/t;->a()Lm0/s;

    move-result-object v15

    move-object/from16 v16, v7

    .line 45
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lm0/s;->m:Ljava/lang/String;

    .line 46
    iget v7, v12, Lo1/p;->b:I

    move-object/from16 v21, v9

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    .line 47
    iget v9, v2, LW0/A;->a:I

    move/from16 v23, v8

    const/4 v8, -0x1

    move/from16 v24, v10

    if-eq v9, v8, :cond_8

    iget v10, v2, LW0/A;->b:I

    if-eq v10, v8, :cond_8

    .line 48
    iput v9, v15, Lm0/s;->I:I

    .line 49
    iput v10, v15, Lm0/s;->J:I

    goto :goto_8

    :cond_7
    move/from16 v23, v8

    move/from16 v24, v10

    .line 50
    :cond_8
    :goto_8
    iget-object v8, v14, Lm0/t;->l:Lm0/N;

    const/4 v9, 0x2

    new-array v10, v9, [Lm0/N;

    const/4 v9, 0x0

    aput-object v5, v10, v9

    const/4 v14, 0x1

    aput-object v6, v10, v14

    invoke-static {v7, v1, v15, v8, v10}, LZ3/H;->u(ILm0/N;Lm0/s;Lm0/N;[Lm0/N;)V

    .line 51
    new-instance v7, Lo1/h;

    .line 52
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    iget v10, v12, Lo1/p;->a:I

    if-ne v8, v14, :cond_9

    .line 53
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo1/f;

    goto :goto_9

    .line 54
    :cond_9
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo1/f;

    .line 55
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    :goto_9
    new-instance v9, Lm0/t;

    invoke-direct {v9, v15}, Lm0/t;-><init>(Lm0/s;)V

    .line 57
    invoke-direct {v7, v13, v11, v8, v9}, Lo1/h;-><init>(LW0/L;Lo1/s;Lo1/f;Lm0/t;)V

    .line 58
    invoke-virtual {v4, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-wide v7, v0, Lo1/i;->A:J

    iget-wide v9, v12, Lo1/p;->e:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lo1/i;->A:J

    const/4 v7, 0x1

    add-int/lit8 v10, v24, 0x1

    move-object/from16 v7, v16

    move-object/from16 v9, v21

    move/from16 v8, v23

    goto/16 :goto_7

    .line 60
    :cond_a
    iget-object v1, v0, Lo1/i;->I:LW0/u;

    invoke-interface {v1}, LW0/u;->j()V

    goto :goto_d

    :cond_b
    move-object/from16 v16, v7

    move/from16 v23, v8

    .line 61
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    move/from16 v2, v23

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_e

    move-object/from16 v5, v16

    .line 62
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo1/s;

    .line 63
    iget-object v7, v6, Lo1/s;->a:Lo1/p;

    .line 64
    iget v8, v7, Lo1/p;->a:I

    .line 65
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo1/h;

    .line 66
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v9, 0x0

    .line 67
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo1/f;

    goto :goto_c

    .line 68
    :cond_d
    iget v7, v7, Lo1/p;->a:I

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo1/f;

    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    :goto_c
    iput-object v6, v8, Lo1/h;->d:Lo1/s;

    .line 71
    iput-object v7, v8, Lo1/h;->e:Lo1/f;

    .line 72
    iget-object v6, v8, Lo1/h;->a:LW0/L;

    iget-object v7, v8, Lo1/h;->j:Lm0/t;

    invoke-interface {v6, v7}, LW0/L;->b(Lm0/t;)V

    .line 73
    invoke-virtual {v8}, Lo1/h;->e()V

    const/4 v6, 0x1

    add-int/2addr v1, v6

    move-object/from16 v16, v5

    goto :goto_b

    :cond_e
    :goto_d
    move-object v5, v0

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x2

    goto/16 :goto_4a

    :cond_f
    move-object v1, v15

    const v2, 0x6d6f6f66

    if-ne v8, v2, :cond_5f

    .line 74
    iget-object v2, v9, Lq0/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_57

    .line 75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq0/c;

    .line 76
    iget v8, v7, Lq0/e;->b:I

    const v9, 0x74726166

    if-ne v8, v9, :cond_56

    const v8, 0x74666864

    .line 77
    invoke-virtual {v7, v8}, Lq0/c;->f(I)Lq0/d;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object v8, v8, Lq0/d;->c:Lp0/E;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lp0/E;->L(I)V

    .line 80
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v9

    .line 81
    sget-object v11, Lo1/e;->a:[B

    .line 82
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v11

    .line 83
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo1/h;

    if-nez v11, :cond_10

    const/4 v11, 0x0

    goto :goto_15

    :cond_10
    const/4 v12, 0x1

    and-int/lit8 v14, v9, 0x1

    .line 84
    iget-object v12, v11, Lo1/h;->b:Lo1/r;

    if-eqz v14, :cond_11

    .line 85
    invoke-virtual {v8}, Lp0/E;->E()J

    move-result-wide v14

    .line 86
    iput-wide v14, v12, Lo1/r;->b:J

    .line 87
    iput-wide v14, v12, Lo1/r;->c:J

    .line 88
    :cond_11
    iget-object v14, v11, Lo1/h;->e:Lo1/f;

    const/4 v15, 0x2

    and-int/lit8 v23, v9, 0x2

    if-eqz v23, :cond_12

    .line 89
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v15

    const/16 v22, 0x1

    add-int/lit8 v15, v15, -0x1

    :goto_f
    const/16 v20, 0x8

    goto :goto_10

    .line 90
    :cond_12
    iget v15, v14, Lo1/f;->a:I

    goto :goto_f

    :goto_10
    and-int/lit8 v23, v9, 0x8

    if-eqz v23, :cond_13

    .line 91
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v23

    move/from16 v3, v23

    :goto_11
    const/16 v4, 0x10

    goto :goto_12

    .line 92
    :cond_13
    iget v3, v14, Lo1/f;->b:I

    goto :goto_11

    :goto_12
    and-int/lit8 v25, v9, 0x10

    if-eqz v25, :cond_14

    .line 93
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v4

    goto :goto_13

    .line 94
    :cond_14
    iget v4, v14, Lo1/f;->c:I

    :goto_13
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_15

    .line 95
    invoke-virtual {v8}, Lp0/E;->l()I

    move-result v8

    goto :goto_14

    .line 96
    :cond_15
    iget v8, v14, Lo1/f;->d:I

    .line 97
    :goto_14
    new-instance v9, Lo1/f;

    invoke-direct {v9, v15, v3, v4, v8}, Lo1/f;-><init>(IIII)V

    iput-object v9, v12, Lo1/r;->a:Lo1/f;

    :goto_15
    if-nez v11, :cond_16

    goto/16 :goto_43

    .line 98
    :cond_16
    iget-object v3, v11, Lo1/h;->b:Lo1/r;

    iget-wide v8, v3, Lo1/r;->p:J

    .line 99
    iget-boolean v4, v3, Lo1/r;->q:Z

    .line 100
    invoke-virtual {v11}, Lo1/h;->e()V

    const/4 v12, 0x1

    .line 101
    iput-boolean v12, v11, Lo1/h;->m:Z

    const v14, 0x74666474

    .line 102
    invoke-virtual {v7, v14}, Lq0/c;->f(I)Lq0/d;

    move-result-object v14

    if-eqz v14, :cond_18

    const/4 v15, 0x2

    and-int/lit8 v22, v13, 0x2

    if-nez v22, :cond_18

    .line 103
    iget-object v4, v14, Lq0/d;->c:Lp0/E;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lp0/E;->L(I)V

    .line 104
    invoke-virtual {v4}, Lp0/E;->l()I

    move-result v8

    .line 105
    invoke-static {v8}, Lo1/e;->e(I)I

    move-result v8

    if-ne v8, v12, :cond_17

    .line 106
    invoke-virtual {v4}, Lp0/E;->E()J

    move-result-wide v8

    goto :goto_16

    :cond_17
    invoke-virtual {v4}, Lp0/E;->B()J

    move-result-wide v8

    .line 107
    :goto_16
    iput-wide v8, v3, Lo1/r;->p:J

    .line 108
    iput-boolean v12, v3, Lo1/r;->q:Z

    goto :goto_17

    .line 109
    :cond_18
    iput-wide v8, v3, Lo1/r;->p:J

    .line 110
    iput-boolean v4, v3, Lo1/r;->q:Z

    .line 111
    :goto_17
    iget-object v4, v7, Lq0/c;->d:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_18
    const v15, 0x7472756e

    if-ge v9, v8, :cond_1a

    .line 113
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v2, v25

    check-cast v2, Lq0/d;

    move/from16 v25, v5

    .line 114
    iget v5, v2, Lq0/e;->b:I

    if-ne v5, v15, :cond_19

    .line 115
    iget-object v2, v2, Lq0/d;->c:Lp0/E;

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lp0/E;->L(I)V

    .line 116
    invoke-virtual {v2}, Lp0/E;->D()I

    move-result v2

    if-lez v2, :cond_19

    add-int/2addr v14, v2

    const/4 v2, 0x1

    add-int/2addr v12, v2

    goto :goto_19

    :cond_19
    const/4 v2, 0x1

    :goto_19
    add-int/2addr v9, v2

    move/from16 v5, v25

    move-object/from16 v2, v26

    goto :goto_18

    :cond_1a
    move-object/from16 v26, v2

    move/from16 v25, v5

    const/4 v2, 0x0

    .line 117
    iput v2, v11, Lo1/h;->h:I

    .line 118
    iput v2, v11, Lo1/h;->g:I

    .line 119
    iput v2, v11, Lo1/h;->f:I

    .line 120
    iput v12, v3, Lo1/r;->d:I

    .line 121
    iput v14, v3, Lo1/r;->e:I

    .line 122
    iget-object v2, v3, Lo1/r;->g:[I

    array-length v2, v2

    if-ge v2, v12, :cond_1b

    .line 123
    new-array v2, v12, [J

    iput-object v2, v3, Lo1/r;->f:[J

    .line 124
    new-array v2, v12, [I

    iput-object v2, v3, Lo1/r;->g:[I

    .line 125
    :cond_1b
    iget-object v2, v3, Lo1/r;->h:[I

    array-length v2, v2

    if-ge v2, v14, :cond_1c

    mul-int/lit8 v14, v14, 0x7d

    .line 126
    div-int/lit8 v14, v14, 0x64

    .line 127
    new-array v2, v14, [I

    iput-object v2, v3, Lo1/r;->h:[I

    .line 128
    new-array v2, v14, [J

    iput-object v2, v3, Lo1/r;->i:[J

    .line 129
    new-array v2, v14, [Z

    iput-object v2, v3, Lo1/r;->j:[Z

    .line 130
    new-array v2, v14, [Z

    iput-object v2, v3, Lo1/r;->l:[Z

    :cond_1c
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1a
    const-wide/16 v27, 0x0

    if-ge v2, v8, :cond_36

    .line 131
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq0/d;

    .line 132
    iget v14, v12, Lq0/e;->b:I

    if-ne v14, v15, :cond_35

    const/4 v14, 0x1

    add-int/lit8 v29, v5, 0x1

    .line 133
    iget-object v12, v12, Lq0/d;->c:Lp0/E;

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lp0/E;->L(I)V

    .line 134
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v14

    .line 135
    sget-object v30, Lo1/e;->a:[B

    .line 136
    iget-object v15, v11, Lo1/h;->d:Lo1/s;

    iget-object v15, v15, Lo1/s;->a:Lo1/p;

    move/from16 v31, v8

    .line 137
    iget-object v8, v3, Lo1/r;->a:Lo1/f;

    sget-object v32, Lp0/M;->a:Ljava/lang/String;

    move-object/from16 v32, v1

    .line 138
    iget-object v1, v3, Lo1/r;->g:[I

    invoke-virtual {v12}, Lp0/E;->D()I

    move-result v33

    aput v33, v1, v5

    .line 139
    iget-object v1, v3, Lo1/r;->f:[J

    move/from16 v33, v6

    move-object/from16 v34, v7

    iget-wide v6, v3, Lo1/r;->b:J

    aput-wide v6, v1, v5

    const/16 v22, 0x1

    and-int/lit8 v35, v14, 0x1

    if-eqz v35, :cond_1d

    move-object/from16 v35, v10

    .line 140
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v10

    move-object/from16 v36, v11

    int-to-long v10, v10

    add-long/2addr v6, v10

    aput-wide v6, v1, v5

    :goto_1b
    const/4 v1, 0x4

    goto :goto_1c

    :cond_1d
    move-object/from16 v35, v10

    move-object/from16 v36, v11

    goto :goto_1b

    :goto_1c
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_1e

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v1, 0x0

    .line 141
    :goto_1d
    iget v6, v8, Lo1/f;->d:I

    if-eqz v1, :cond_1f

    .line 142
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v6

    :cond_1f
    and-int/lit16 v7, v14, 0x100

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_1e

    :cond_20
    const/4 v7, 0x0

    :goto_1e
    and-int/lit16 v10, v14, 0x200

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    goto :goto_1f

    :cond_21
    const/4 v10, 0x0

    :goto_1f
    and-int/lit16 v11, v14, 0x400

    if-eqz v11, :cond_22

    const/4 v11, 0x1

    goto :goto_20

    :cond_22
    const/4 v11, 0x0

    :goto_20
    and-int/lit16 v14, v14, 0x800

    move/from16 v37, v6

    if-eqz v14, :cond_23

    const/4 v14, 0x1

    goto :goto_21

    :cond_23
    const/4 v14, 0x0

    .line 143
    :goto_21
    iget-object v6, v15, Lo1/p;->i:[J

    if-eqz v6, :cond_27

    array-length v0, v6

    move-object/from16 v38, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_24

    iget-object v0, v15, Lo1/p;->j:[J

    if-nez v0, :cond_25

    :cond_24
    move v6, v1

    move v4, v2

    move/from16 v39, v10

    move/from16 v40, v11

    goto :goto_24

    :cond_25
    const/4 v4, 0x0

    .line 144
    aget-wide v39, v6, v4

    cmp-long v4, v39, v27

    if-nez v4, :cond_26

    move v6, v1

    move v4, v2

    move/from16 v39, v10

    move/from16 v40, v11

    :goto_22
    const/4 v1, 0x0

    goto :goto_23

    .line 145
    :cond_26
    sget-object v47, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v41, 0xf4240

    move v6, v1

    move v4, v2

    iget-wide v1, v15, Lo1/p;->d:J

    move-wide/from16 v43, v1

    move-object/from16 v45, v47

    invoke-static/range {v39 .. v45}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    const/16 v18, 0x0

    .line 146
    aget-wide v41, v0, v18

    const-wide/32 v43, 0xf4240

    move/from16 v39, v10

    move/from16 v40, v11

    .line 147
    iget-wide v10, v15, Lo1/p;->c:J

    move-wide/from16 v45, v10

    invoke-static/range {v41 .. v47}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    add-long/2addr v1, v10

    .line 148
    iget-wide v10, v15, Lo1/p;->e:J

    cmp-long v41, v1, v10

    if-ltz v41, :cond_28

    goto :goto_22

    .line 149
    :goto_23
    aget-wide v27, v0, v1

    goto :goto_24

    :cond_27
    move v6, v1

    move-object/from16 v38, v4

    move/from16 v39, v10

    move/from16 v40, v11

    move v4, v2

    .line 150
    :cond_28
    :goto_24
    iget-object v0, v3, Lo1/r;->h:[I

    .line 151
    iget-object v1, v3, Lo1/r;->i:[J

    .line 152
    iget-object v2, v3, Lo1/r;->j:[Z

    .line 153
    iget v10, v15, Lo1/p;->b:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_29

    const/4 v10, 0x1

    and-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_29

    const/4 v10, 0x1

    goto :goto_25

    :cond_29
    const/4 v10, 0x0

    .line 154
    :goto_25
    iget-object v11, v3, Lo1/r;->g:[I

    aget v5, v11, v5

    add-int/2addr v5, v9

    move v11, v9

    move/from16 v41, v10

    .line 155
    iget-wide v9, v3, Lo1/r;->p:J

    move-wide/from16 v55, v9

    move v9, v11

    move-wide/from16 v10, v55

    :goto_26
    if-ge v9, v5, :cond_34

    if-eqz v7, :cond_2a

    .line 156
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v42

    move/from16 v43, v7

    move/from16 v55, v42

    move/from16 v42, v5

    move/from16 v5, v55

    goto :goto_27

    :cond_2a
    move/from16 v42, v5

    iget v5, v8, Lo1/f;->b:I

    move/from16 v43, v7

    .line 157
    :goto_27
    const-string v7, "Unexpected negative value: "

    if-ltz v5, :cond_33

    if-eqz v39, :cond_2b

    .line 158
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v44

    move/from16 v55, v44

    move/from16 v44, v13

    move/from16 v13, v55

    goto :goto_28

    :cond_2b
    move/from16 v44, v13

    iget v13, v8, Lo1/f;->c:I

    :goto_28
    if-ltz v13, :cond_32

    if-eqz v40, :cond_2c

    .line 159
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v7

    goto :goto_29

    :cond_2c
    if-nez v9, :cond_2d

    if-eqz v6, :cond_2d

    move/from16 v7, v37

    goto :goto_29

    .line 160
    :cond_2d
    iget v7, v8, Lo1/f;->d:I

    :goto_29
    if-eqz v14, :cond_2e

    .line 161
    invoke-virtual {v12}, Lp0/E;->l()I

    move-result v45

    move/from16 v46, v4

    move/from16 v47, v5

    move/from16 v55, v45

    move/from16 v45, v6

    move/from16 v6, v55

    goto :goto_2a

    :cond_2e
    move/from16 v46, v4

    move/from16 v47, v5

    move/from16 v45, v6

    const/4 v6, 0x0

    :goto_2a
    int-to-long v4, v6

    add-long/2addr v4, v10

    sub-long v48, v4, v27

    .line 162
    sget-object v54, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v50, 0xf4240

    iget-wide v4, v15, Lo1/p;->c:J

    move-wide/from16 v52, v4

    invoke-static/range {v48 .. v54}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    .line 163
    aput-wide v4, v1, v9

    .line 164
    iget-boolean v6, v3, Lo1/r;->q:Z

    if-nez v6, :cond_2f

    move-object/from16 v6, v36

    move-object/from16 v36, v8

    .line 165
    iget-object v8, v6, Lo1/h;->d:Lo1/s;

    move/from16 v49, v14

    move-object/from16 v48, v15

    iget-wide v14, v8, Lo1/s;->h:J

    add-long/2addr v4, v14

    aput-wide v4, v1, v9

    goto :goto_2b

    :cond_2f
    move/from16 v49, v14

    move-object/from16 v48, v15

    move-object/from16 v6, v36

    move-object/from16 v36, v8

    .line 166
    :goto_2b
    aput v13, v0, v9

    const/16 v4, 0x10

    shr-int/lit8 v5, v7, 0x10

    const/4 v4, 0x1

    and-int/2addr v5, v4

    if-nez v5, :cond_31

    if-eqz v41, :cond_30

    if-nez v9, :cond_31

    :cond_30
    const/4 v4, 0x1

    goto :goto_2c

    :cond_31
    const/4 v4, 0x0

    .line 167
    :goto_2c
    aput-boolean v4, v2, v9

    move/from16 v5, v47

    int-to-long v4, v5

    add-long/2addr v10, v4

    const/4 v4, 0x1

    add-int/2addr v9, v4

    move-object/from16 v8, v36

    move/from16 v5, v42

    move/from16 v7, v43

    move/from16 v13, v44

    move/from16 v4, v46

    move-object/from16 v15, v48

    move/from16 v14, v49

    move-object/from16 v36, v6

    move/from16 v6, v45

    goto/16 :goto_26

    .line 168
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_33
    const/4 v1, 0x0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_34
    move/from16 v46, v4

    move/from16 v42, v5

    move/from16 v44, v13

    move-object/from16 v6, v36

    .line 170
    iput-wide v10, v3, Lo1/r;->p:J

    move/from16 v5, v29

    move/from16 v9, v42

    :goto_2d
    const/4 v0, 0x1

    goto :goto_2e

    :cond_35
    move-object/from16 v32, v1

    move/from16 v46, v2

    move-object/from16 v38, v4

    move/from16 v33, v6

    move-object/from16 v34, v7

    move/from16 v31, v8

    move-object/from16 v35, v10

    move-object v6, v11

    move/from16 v44, v13

    move v11, v9

    goto :goto_2d

    :goto_2e
    add-int/lit8 v2, v46, 0x1

    move-object/from16 v0, p0

    move-object v11, v6

    move/from16 v8, v31

    move-object/from16 v1, v32

    move/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v10, v35

    move-object/from16 v4, v38

    move/from16 v13, v44

    const v15, 0x7472756e

    goto/16 :goto_1a

    :cond_36
    move-object/from16 v32, v1

    move-object/from16 v38, v4

    move/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object v6, v11

    move/from16 v44, v13

    .line 171
    iget-object v0, v6, Lo1/h;->d:Lo1/s;

    iget-object v0, v0, Lo1/s;->a:Lo1/p;

    iget-object v1, v3, Lo1/r;->a:Lo1/f;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    iget-object v0, v0, Lo1/p;->l:[Lo1/q;

    if-nez v0, :cond_37

    const/4 v1, 0x0

    goto :goto_2f

    .line 174
    :cond_37
    iget v1, v1, Lo1/f;->a:I

    aget-object v0, v0, v1

    move-object v1, v0

    :goto_2f
    const v0, 0x7361697a

    move-object/from16 v7, v34

    .line 175
    invoke-virtual {v7, v0}, Lq0/c;->f(I)Lq0/d;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iget-object v0, v0, Lq0/d;->c:Lp0/E;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 178
    invoke-virtual {v0}, Lp0/E;->l()I

    move-result v4

    .line 179
    sget-object v5, Lo1/e;->a:[B

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_38

    .line 180
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 181
    :cond_38
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v2

    .line 182
    invoke-virtual {v0}, Lp0/E;->D()I

    move-result v4

    .line 183
    iget v5, v3, Lo1/r;->e:I

    if-gt v4, v5, :cond_3d

    .line 184
    iget v5, v1, Lo1/q;->d:I

    if-nez v2, :cond_3b

    .line 185
    iget-object v2, v3, Lo1/r;->l:[Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_30
    if-ge v6, v4, :cond_3a

    .line 186
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v9

    add-int/2addr v8, v9

    if-le v9, v5, :cond_39

    const/4 v9, 0x1

    goto :goto_31

    :cond_39
    const/4 v9, 0x0

    .line 187
    :goto_31
    aput-boolean v9, v2, v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    goto :goto_30

    :cond_3a
    const/4 v5, 0x0

    goto :goto_33

    :cond_3b
    if-le v2, v5, :cond_3c

    const/4 v0, 0x1

    goto :goto_32

    :cond_3c
    const/4 v0, 0x0

    :goto_32
    mul-int v8, v2, v4

    .line 188
    iget-object v2, v3, Lo1/r;->l:[Z

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 189
    :goto_33
    iget-object v0, v3, Lo1/r;->l:[Z

    iget v2, v3, Lo1/r;->e:I

    invoke-static {v0, v4, v2, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v8, :cond_3e

    .line 190
    iget-object v0, v3, Lo1/r;->n:Lp0/E;

    invoke-virtual {v0, v8}, Lp0/E;->I(I)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, v3, Lo1/r;->k:Z

    .line 192
    iput-boolean v0, v3, Lo1/r;->o:Z

    goto :goto_34

    .line 193
    :cond_3d
    const-string v0, "Saiz sample count "

    const-string v1, " is greater than fragment sample count"

    .line 194
    invoke-static {v0, v4, v1}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    iget v1, v3, Lo1/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_3e
    :goto_34
    const v0, 0x7361696f

    .line 196
    invoke-virtual {v7, v0}, Lq0/c;->f(I)Lq0/d;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 197
    iget-object v0, v0, Lq0/d;->c:Lp0/E;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 198
    invoke-virtual {v0}, Lp0/E;->l()I

    move-result v4

    .line 199
    sget-object v5, Lo1/e;->a:[B

    const/4 v5, 0x1

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v5, :cond_3f

    .line 200
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 201
    :cond_3f
    invoke-virtual {v0}, Lp0/E;->D()I

    move-result v2

    if-ne v2, v5, :cond_42

    .line 202
    invoke-static {v4}, Lo1/e;->e(I)I

    move-result v2

    .line 203
    iget-wide v4, v3, Lo1/r;->c:J

    if-nez v2, :cond_40

    .line 204
    invoke-virtual {v0}, Lp0/E;->B()J

    move-result-wide v8

    goto :goto_35

    :cond_40
    invoke-virtual {v0}, Lp0/E;->E()J

    move-result-wide v8

    :goto_35
    add-long/2addr v4, v8

    iput-wide v4, v3, Lo1/r;->c:J

    :cond_41
    const/4 v2, 0x0

    goto :goto_36

    .line 205
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :goto_36
    const v0, 0x73656e63

    .line 206
    invoke-virtual {v7, v0}, Lq0/c;->f(I)Lq0/d;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 207
    iget-object v0, v0, Lq0/d;->c:Lp0/E;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lo1/i;->f(Lp0/E;ILo1/r;)V

    :cond_43
    if-eqz v1, :cond_44

    .line 208
    iget-object v1, v1, Lo1/q;->b:Ljava/lang/String;

    move-object v6, v1

    goto :goto_37

    :cond_44
    move-object v6, v2

    :goto_37
    move-object v0, v2

    move-object v1, v0

    const/4 v4, 0x0

    .line 209
    :goto_38
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_47

    move-object/from16 v12, v38

    .line 210
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/d;

    .line 211
    iget-object v7, v5, Lq0/d;->c:Lp0/E;

    .line 212
    iget v5, v5, Lq0/e;->b:I

    const v8, 0x73626770

    const v9, 0x73656967

    if-ne v5, v8, :cond_46

    const/16 v13, 0xc

    .line 213
    invoke-virtual {v7, v13}, Lp0/E;->L(I)V

    .line 214
    invoke-virtual {v7}, Lp0/E;->l()I

    move-result v5

    if-ne v5, v9, :cond_45

    move-object v1, v7

    :cond_45
    :goto_39
    const/4 v5, 0x1

    goto :goto_3a

    :cond_46
    const/16 v13, 0xc

    const v8, 0x73677064

    if-ne v5, v8, :cond_45

    .line 215
    invoke-virtual {v7, v13}, Lp0/E;->L(I)V

    .line 216
    invoke-virtual {v7}, Lp0/E;->l()I

    move-result v5

    if-ne v5, v9, :cond_45

    move-object v0, v7

    goto :goto_39

    :goto_3a
    add-int/2addr v4, v5

    move-object/from16 v38, v12

    goto :goto_38

    :cond_47
    move-object/from16 v12, v38

    const/4 v5, 0x1

    const/16 v13, 0xc

    if-eqz v1, :cond_48

    if-nez v0, :cond_49

    :cond_48
    const/4 v14, 0x4

    const/4 v15, 0x2

    goto/16 :goto_3f

    :cond_49
    const/16 v4, 0x8

    .line 217
    invoke-virtual {v1, v4}, Lp0/E;->L(I)V

    .line 218
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v7

    invoke-static {v7}, Lo1/e;->e(I)I

    move-result v7

    const/4 v14, 0x4

    .line 219
    invoke-virtual {v1, v14}, Lp0/E;->M(I)V

    if-ne v7, v5, :cond_4a

    .line 220
    invoke-virtual {v1, v14}, Lp0/E;->M(I)V

    .line 221
    :cond_4a
    invoke-virtual {v1}, Lp0/E;->l()I

    move-result v1

    if-ne v1, v5, :cond_52

    .line 222
    invoke-virtual {v0, v4}, Lp0/E;->L(I)V

    .line 223
    invoke-virtual {v0}, Lp0/E;->l()I

    move-result v1

    invoke-static {v1}, Lo1/e;->e(I)I

    move-result v1

    .line 224
    invoke-virtual {v0, v14}, Lp0/E;->M(I)V

    if-ne v1, v5, :cond_4c

    .line 225
    invoke-virtual {v0}, Lp0/E;->B()J

    move-result-wide v4

    cmp-long v1, v4, v27

    if-eqz v1, :cond_4b

    const/4 v15, 0x2

    goto :goto_3b

    .line 226
    :cond_4b
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_4c
    const/4 v15, 0x2

    if-lt v1, v15, :cond_4d

    .line 227
    invoke-virtual {v0, v14}, Lp0/E;->M(I)V

    .line 228
    :cond_4d
    :goto_3b
    invoke-virtual {v0}, Lp0/E;->B()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v1, v4, v7

    if-nez v1, :cond_51

    const/4 v1, 0x1

    .line 229
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 230
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v4

    and-int/lit16 v5, v4, 0xf0

    shr-int/lit8 v9, v5, 0x4

    and-int/lit8 v10, v4, 0xf

    .line 231
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v4

    if-ne v4, v1, :cond_4e

    const/4 v5, 0x1

    goto :goto_3c

    :cond_4e
    const/4 v5, 0x0

    :goto_3c
    if-nez v5, :cond_4f

    goto :goto_3f

    .line 232
    :cond_4f
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v7

    const/16 v1, 0x10

    .line 233
    new-array v8, v1, [B

    const/4 v4, 0x0

    .line 234
    invoke-virtual {v0, v4, v8, v1}, Lp0/E;->j(I[BI)V

    if-nez v7, :cond_50

    .line 235
    invoke-virtual {v0}, Lp0/E;->z()I

    move-result v1

    .line 236
    new-array v11, v1, [B

    .line 237
    invoke-virtual {v0, v4, v11, v1}, Lp0/E;->j(I[BI)V

    :goto_3d
    const/4 v0, 0x1

    goto :goto_3e

    :cond_50
    move-object v11, v2

    goto :goto_3d

    .line 238
    :goto_3e
    iput-boolean v0, v3, Lo1/r;->k:Z

    .line 239
    new-instance v0, Lo1/q;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lo1/q;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v3, Lo1/r;->m:Lo1/q;

    goto :goto_3f

    .line 240
    :cond_51
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    .line 241
    :cond_52
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    .line 242
    :goto_3f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_40
    if-ge v10, v0, :cond_55

    .line 243
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/d;

    .line 244
    iget v4, v1, Lq0/e;->b:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_54

    .line 245
    iget-object v1, v1, Lq0/d;->c:Lp0/E;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lp0/E;->L(I)V

    move-object/from16 v5, p0

    .line 246
    iget-object v6, v5, Lo1/i;->h:[B

    const/4 v8, 0x0

    const/16 v11, 0x10

    invoke-virtual {v1, v8, v6, v11}, Lp0/E;->j(I[BI)V

    .line 247
    sget-object v7, Lo1/i;->O:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_41

    .line 248
    :cond_53
    invoke-static {v1, v11, v3}, Lo1/i;->f(Lp0/E;ILo1/r;)V

    :goto_41
    const/4 v1, 0x1

    goto :goto_42

    :cond_54
    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    move-object/from16 v5, p0

    goto :goto_41

    :goto_42
    add-int/2addr v10, v1

    goto :goto_40

    :cond_55
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    move-object/from16 v5, p0

    goto :goto_44

    :cond_56
    :goto_43
    move-object/from16 v32, v1

    move-object/from16 v26, v2

    move/from16 v25, v5

    move/from16 v33, v6

    move-object/from16 v35, v10

    move/from16 v44, v13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    const/16 v13, 0xc

    const/4 v14, 0x4

    const/4 v15, 0x2

    move-object v5, v0

    :goto_44
    add-int/lit8 v6, v33, 0x1

    move-object v0, v5

    move/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v32

    move-object/from16 v10, v35

    move/from16 v13, v44

    goto/16 :goto_e

    :cond_57
    move-object v5, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v10

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    const/4 v14, 0x4

    const/4 v15, 0x2

    .line 249
    invoke-static/range {v35 .. v35}, Lo1/i;->e(Ljava/util/ArrayList;)Lm0/n;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 250
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_45
    if-ge v10, v1, :cond_5a

    move-object/from16 v3, v32

    .line 251
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo1/h;

    .line 252
    iget-object v7, v6, Lo1/h;->d:Lo1/s;

    .line 253
    iget-object v7, v7, Lo1/s;->a:Lo1/p;

    iget-object v9, v6, Lo1/h;->b:Lo1/r;

    iget-object v9, v9, Lo1/r;->a:Lo1/f;

    .line 254
    sget-object v12, Lp0/M;->a:Ljava/lang/String;

    iget v9, v9, Lo1/f;->a:I

    .line 255
    iget-object v7, v7, Lo1/p;->l:[Lo1/q;

    if-nez v7, :cond_58

    move-object v7, v2

    goto :goto_46

    .line 256
    :cond_58
    aget-object v7, v7, v9

    :goto_46
    if-eqz v7, :cond_59

    .line 257
    iget-object v7, v7, Lo1/q;->b:Ljava/lang/String;

    goto :goto_47

    :cond_59
    move-object v7, v2

    .line 258
    :goto_47
    invoke-virtual {v0, v7}, Lm0/n;->a(Ljava/lang/String;)Lm0/n;

    move-result-object v7

    .line 259
    iget-object v9, v6, Lo1/h;->j:Lm0/t;

    invoke-virtual {v9}, Lm0/t;->a()Lm0/s;

    move-result-object v9

    .line 260
    iput-object v7, v9, Lm0/s;->r:Lm0/n;

    .line 261
    new-instance v7, Lm0/t;

    invoke-direct {v7, v9}, Lm0/t;-><init>(Lm0/s;)V

    .line 262
    iget-object v6, v6, Lo1/h;->a:LW0/L;

    invoke-interface {v6, v7}, LW0/L;->b(Lm0/t;)V

    const/4 v6, 0x1

    add-int/2addr v10, v6

    move-object/from16 v32, v3

    goto :goto_45

    :cond_5a
    move-object/from16 v3, v32

    .line 263
    iget-wide v0, v5, Lo1/i;->z:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v6

    if-eqz v2, :cond_5e

    .line 264
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_48
    if-ge v10, v0, :cond_5d

    .line 265
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/h;

    iget-wide v6, v5, Lo1/i;->z:J

    .line 266
    iget v2, v1, Lo1/h;->f:I

    .line 267
    :goto_49
    iget-object v9, v1, Lo1/h;->b:Lo1/r;

    iget v12, v9, Lo1/r;->e:I

    if-ge v2, v12, :cond_5c

    .line 268
    iget-object v12, v9, Lo1/r;->i:[J

    .line 269
    aget-wide v16, v12, v2

    cmp-long v12, v16, v6

    if-gtz v12, :cond_5c

    .line 270
    iget-object v9, v9, Lo1/r;->j:[Z

    aget-boolean v9, v9, v2

    if-eqz v9, :cond_5b

    .line 271
    iput v2, v1, Lo1/h;->i:I

    :cond_5b
    const/4 v12, 0x1

    add-int/2addr v2, v12

    goto :goto_49

    :cond_5c
    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_48

    :cond_5d
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x1

    .line 272
    iput-wide v1, v5, Lo1/i;->z:J

    goto :goto_4a

    :cond_5e
    const/4 v12, 0x1

    goto :goto_4a

    :cond_5f
    move-object v5, v0

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x2

    .line 273
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 274
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/c;

    .line 275
    iget-object v0, v0, Lq0/c;->e:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    :goto_4a
    move-object v0, v5

    goto/16 :goto_0

    :cond_61
    move-object v5, v0

    .line 277
    invoke-virtual/range {p0 .. p0}, Lo1/i;->c()V

    return-void
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
