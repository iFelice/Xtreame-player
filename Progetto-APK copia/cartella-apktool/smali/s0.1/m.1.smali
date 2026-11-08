.class public final Ls0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:J

.field public final c:I

.field public final d:[B

.field public final e:Ljava/util/Map;

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.datasource"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v3, p5

    .line 5
    .line 6
    move-wide/from16 v4, p7

    .line 7
    .line 8
    move-wide/from16 v6, p9

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    add-long v8, v1, v4

    .line 14
    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    const-wide/16 v12, 0x0

    .line 18
    .line 19
    cmp-long v14, v8, v12

    .line 20
    .line 21
    if-ltz v14, :cond_0

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v8, 0x0

    .line 26
    :goto_0
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 27
    .line 28
    .line 29
    cmp-long v8, v4, v12

    .line 30
    .line 31
    if-ltz v8, :cond_1

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v8, 0x0

    .line 36
    :goto_1
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 37
    .line 38
    .line 39
    cmp-long v8, v6, v12

    .line 40
    .line 41
    if-gtz v8, :cond_3

    .line 42
    .line 43
    const-wide/16 v8, -0x1

    .line 44
    .line 45
    cmp-long v12, v6, v8

    .line 46
    .line 47
    if-nez v12, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v10, 0x0

    .line 51
    :cond_3
    :goto_2
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-object/from16 v8, p1

    .line 58
    .line 59
    iput-object v8, v0, Ls0/m;->a:Landroid/net/Uri;

    .line 60
    .line 61
    iput-wide v1, v0, Ls0/m;->b:J

    .line 62
    .line 63
    move/from16 v1, p4

    .line 64
    .line 65
    iput v1, v0, Ls0/m;->c:I

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    array-length v1, v3

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    move-object v3, v1

    .line 75
    :goto_3
    iput-object v3, v0, Ls0/m;->d:[B

    .line 76
    .line 77
    new-instance v1, Ljava/util/HashMap;

    .line 78
    .line 79
    move-object/from16 v2, p6

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Ls0/m;->e:Ljava/util/Map;

    .line 89
    .line 90
    iput-wide v4, v0, Ls0/m;->f:J

    .line 91
    .line 92
    iput-wide v6, v0, Ls0/m;->g:J

    .line 93
    .line 94
    move-object/from16 v1, p11

    .line 95
    .line 96
    iput-object v1, v0, Ls0/m;->h:Ljava/lang/String;

    .line 97
    .line 98
    move/from16 v1, p12

    .line 99
    .line 100
    iput v1, v0, Ls0/m;->i:I

    .line 101
    .line 102
    move-object/from16 v1, p13

    .line 103
    .line 104
    iput-object v1, v0, Ls0/m;->j:Ljava/lang/Object;

    .line 105
    .line 106
    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "HEAD"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    const-string p0, "POST"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "GET"

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final a()Ls0/l;
    .locals 3

    .line 1
    new-instance v0, Ls0/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls0/m;->a:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object v1, v0, Ls0/l;->a:Landroid/net/Uri;

    .line 9
    .line 10
    iget-wide v1, p0, Ls0/m;->b:J

    .line 11
    .line 12
    iput-wide v1, v0, Ls0/l;->b:J

    .line 13
    .line 14
    iget v1, p0, Ls0/m;->c:I

    .line 15
    .line 16
    iput v1, v0, Ls0/l;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Ls0/m;->d:[B

    .line 19
    .line 20
    iput-object v1, v0, Ls0/l;->d:[B

    .line 21
    .line 22
    iget-object v1, p0, Ls0/m;->e:Ljava/util/Map;

    .line 23
    .line 24
    iput-object v1, v0, Ls0/l;->e:Ljava/util/Map;

    .line 25
    .line 26
    iget-wide v1, p0, Ls0/m;->f:J

    .line 27
    .line 28
    iput-wide v1, v0, Ls0/l;->f:J

    .line 29
    .line 30
    iget-wide v1, p0, Ls0/m;->g:J

    .line 31
    .line 32
    iput-wide v1, v0, Ls0/l;->g:J

    .line 33
    .line 34
    iget-object v1, p0, Ls0/m;->h:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Ls0/l;->h:Ljava/lang/String;

    .line 37
    .line 38
    iget v1, p0, Ls0/m;->i:I

    .line 39
    .line 40
    iput v1, v0, Ls0/l;->i:I

    .line 41
    .line 42
    iget-object v1, p0, Ls0/m;->j:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v1, v0, Ls0/l;->j:Ljava/lang/Object;

    .line 45
    .line 46
    return-object v0
.end method

.method public final c(J)Ls0/m;
    .locals 5

    .line 1
    iget-wide v0, p0, Ls0/m;->g:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sub-long v2, v0, p1

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Ls0/m;->d(JJ)Ls0/m;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final d(JJ)Ls0/m;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    cmp-long v3, p1, v1

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    iget-wide v1, v0, Ls0/m;->g:J

    .line 10
    .line 11
    cmp-long v3, v1, p3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Ls0/m;

    .line 17
    .line 18
    iget-wide v2, v0, Ls0/m;->f:J

    .line 19
    .line 20
    add-long v10, v2, p1

    .line 21
    .line 22
    iget v15, v0, Ls0/m;->i:I

    .line 23
    .line 24
    iget-object v2, v0, Ls0/m;->j:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v4, v0, Ls0/m;->a:Landroid/net/Uri;

    .line 27
    .line 28
    iget-wide v5, v0, Ls0/m;->b:J

    .line 29
    .line 30
    iget v7, v0, Ls0/m;->c:I

    .line 31
    .line 32
    iget-object v8, v0, Ls0/m;->d:[B

    .line 33
    .line 34
    iget-object v9, v0, Ls0/m;->e:Ljava/util/Map;

    .line 35
    .line 36
    iget-object v14, v0, Ls0/m;->h:Ljava/lang/String;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move-wide/from16 v12, p3

    .line 40
    .line 41
    move-object/from16 v16, v2

    .line 42
    .line 43
    invoke-direct/range {v3 .. v16}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DataSpec["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ls0/m;->c:I

    .line 9
    .line 10
    invoke-static {v1}, Ls0/m;->b(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Ls0/m;->a:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Ls0/m;->f:J

    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v2, p0, Ls0/m;->g:J

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Ls0/m;->h:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Ls0/m;->i:I

    .line 57
    .line 58
    const-string v2, "]"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, La/r;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
