.class public final LB0/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:LO0/y;


# instance fields
.field public final a:Lm0/f0;

.field public final b:LO0/y;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:LB0/w;

.field public final g:Z

.field public final h:LO0/Z;

.field public final i:LR0/y;

.field public final j:Ljava/util/List;

.field public final k:LO0/y;

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Lm0/S;

.field public final p:Z

.field public volatile q:J

.field public volatile r:J

.field public volatile s:J

.field public volatile t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LO0/y;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LO0/y;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, LB0/v0;->u:LO0/y;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, LB0/v0;->a:Lm0/f0;

    move-object v1, p2

    .line 4
    iput-object v1, v0, LB0/v0;->b:LO0/y;

    move-wide v1, p3

    .line 5
    iput-wide v1, v0, LB0/v0;->c:J

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, LB0/v0;->d:J

    move v1, p7

    .line 7
    iput v1, v0, LB0/v0;->e:I

    move-object v1, p8

    .line 8
    iput-object v1, v0, LB0/v0;->f:LB0/w;

    move v1, p9

    .line 9
    iput-boolean v1, v0, LB0/v0;->g:Z

    move-object v1, p10

    .line 10
    iput-object v1, v0, LB0/v0;->h:LO0/Z;

    move-object v1, p11

    .line 11
    iput-object v1, v0, LB0/v0;->i:LR0/y;

    move-object v1, p12

    .line 12
    iput-object v1, v0, LB0/v0;->j:Ljava/util/List;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, LB0/v0;->k:LO0/y;

    move/from16 v1, p14

    .line 14
    iput-boolean v1, v0, LB0/v0;->l:Z

    move/from16 v1, p15

    .line 15
    iput v1, v0, LB0/v0;->m:I

    move/from16 v1, p16

    .line 16
    iput v1, v0, LB0/v0;->n:I

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, LB0/v0;->o:Lm0/S;

    move-wide/from16 v1, p18

    .line 18
    iput-wide v1, v0, LB0/v0;->q:J

    move-wide/from16 v1, p20

    .line 19
    iput-wide v1, v0, LB0/v0;->r:J

    move-wide/from16 v1, p22

    .line 20
    iput-wide v1, v0, LB0/v0;->s:J

    move-wide/from16 v1, p24

    .line 21
    iput-wide v1, v0, LB0/v0;->t:J

    move/from16 v1, p26

    .line 22
    iput-boolean v1, v0, LB0/v0;->p:Z

    return-void
.end method

.method public static k(LR0/y;)LB0/v0;
    .locals 28

    .line 1
    new-instance v27, LB0/v0;

    .line 2
    .line 3
    sget-object v1, Lm0/f0;->a:Lm0/c0;

    .line 4
    .line 5
    sget-object v13, LB0/v0;->u:LO0/y;

    .line 6
    .line 7
    sget-object v10, LO0/Z;->d:LO0/Z;

    .line 8
    .line 9
    sget-object v12, Lz4/d0;->K:Lz4/d0;

    .line 10
    .line 11
    sget-object v17, Lm0/S;->d:Lm0/S;

    .line 12
    .line 13
    const-wide/16 v20, 0x0

    .line 14
    .line 15
    const-wide/16 v22, 0x0

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x1

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const-wide/16 v18, 0x0

    .line 32
    .line 33
    const-wide/16 v24, 0x0

    .line 34
    .line 35
    const/16 v26, 0x0

    .line 36
    .line 37
    move-object/from16 v0, v27

    .line 38
    .line 39
    move-object v2, v13

    .line 40
    move-object/from16 v11, p0

    .line 41
    .line 42
    invoke-direct/range {v0 .. v26}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 43
    .line 44
    .line 45
    return-object v27
.end method


# virtual methods
.method public final a()LB0/v0;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v28, LB0/v0;

    .line 4
    .line 5
    move-object/from16 v1, v28

    .line 6
    .line 7
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 8
    .line 9
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 10
    .line 11
    iget-wide v4, v0, LB0/v0;->c:J

    .line 12
    .line 13
    iget-wide v6, v0, LB0/v0;->d:J

    .line 14
    .line 15
    iget v8, v0, LB0/v0;->e:I

    .line 16
    .line 17
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 18
    .line 19
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 20
    .line 21
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 22
    .line 23
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 24
    .line 25
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 26
    .line 27
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 v29, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v30, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, LB0/v0;->l()J

    .line 56
    .line 57
    .line 58
    move-result-wide v23

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v25

    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, v29

    .line 68
    .line 69
    move-object/from16 v2, v30

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final b(Z)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget v8, v0, LB0/v0;->e:I

    .line 18
    .line 19
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 20
    .line 21
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 22
    .line 23
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 24
    .line 25
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 26
    .line 27
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 p1, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v29, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->s:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, LB0/v0;->t:J

    .line 60
    .line 61
    move-wide/from16 v25, v1

    .line 62
    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move-object/from16 v2, v29

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final c(LO0/y;)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget v8, v0, LB0/v0;->e:I

    .line 18
    .line 19
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 20
    .line 21
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 22
    .line 23
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 24
    .line 25
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 26
    .line 27
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 p1, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v29, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->s:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, LB0/v0;->t:J

    .line 60
    .line 61
    move-wide/from16 v25, v1

    .line 62
    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move-object/from16 v2, v29

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-wide/from16 v23, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    move-wide/from16 v21, p8

    .line 12
    .line 13
    move-object/from16 v11, p10

    .line 14
    .line 15
    move-object/from16 v12, p11

    .line 16
    .line 17
    move-object/from16 v13, p12

    .line 18
    .line 19
    new-instance v28, LB0/v0;

    .line 20
    .line 21
    move-object/from16 v1, v28

    .line 22
    .line 23
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 24
    .line 25
    iget v8, v0, LB0/v0;->e:I

    .line 26
    .line 27
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 28
    .line 29
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 30
    .line 31
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 32
    .line 33
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 34
    .line 35
    move-object/from16 p1, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->m:I

    .line 38
    .line 39
    move/from16 v16, v1

    .line 40
    .line 41
    iget v1, v0, LB0/v0;->n:I

    .line 42
    .line 43
    move/from16 v17, v1

    .line 44
    .line 45
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 46
    .line 47
    move-object/from16 v18, v1

    .line 48
    .line 49
    move-object/from16 p2, v2

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->q:J

    .line 52
    .line 53
    move-wide/from16 v19, v1

    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v25

    .line 59
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 60
    .line 61
    move/from16 v27, v1

    .line 62
    .line 63
    move-object/from16 v1, p1

    .line 64
    .line 65
    move-object/from16 v2, p2

    .line 66
    .line 67
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 68
    .line 69
    .line 70
    return-object v28
.end method

.method public final e(ZII)LB0/v0;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v15, p1

    .line 4
    .line 5
    move/from16 v16, p2

    .line 6
    .line 7
    move/from16 v17, p3

    .line 8
    .line 9
    new-instance v28, LB0/v0;

    .line 10
    .line 11
    move-object/from16 v1, v28

    .line 12
    .line 13
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 14
    .line 15
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 16
    .line 17
    iget-wide v4, v0, LB0/v0;->c:J

    .line 18
    .line 19
    iget-wide v6, v0, LB0/v0;->d:J

    .line 20
    .line 21
    iget v8, v0, LB0/v0;->e:I

    .line 22
    .line 23
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 24
    .line 25
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 26
    .line 27
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 28
    .line 29
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 30
    .line 31
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 32
    .line 33
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 34
    .line 35
    move-object/from16 p1, v1

    .line 36
    .line 37
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 38
    .line 39
    move-object/from16 v18, v1

    .line 40
    .line 41
    move-object/from16 p2, v2

    .line 42
    .line 43
    iget-wide v1, v0, LB0/v0;->q:J

    .line 44
    .line 45
    move-wide/from16 v19, v1

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->r:J

    .line 48
    .line 49
    move-wide/from16 v21, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->s:J

    .line 52
    .line 53
    move-wide/from16 v23, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->t:J

    .line 56
    .line 57
    move-wide/from16 v25, v1

    .line 58
    .line 59
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 60
    .line 61
    move/from16 v27, v1

    .line 62
    .line 63
    move-object/from16 v1, p1

    .line 64
    .line 65
    move-object/from16 v2, p2

    .line 66
    .line 67
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 68
    .line 69
    .line 70
    return-object v28
.end method

.method public final f(LB0/w;)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget v8, v0, LB0/v0;->e:I

    .line 18
    .line 19
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 20
    .line 21
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 22
    .line 23
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 24
    .line 25
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 26
    .line 27
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 p1, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v29, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->s:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, LB0/v0;->t:J

    .line 60
    .line 61
    move-wide/from16 v25, v1

    .line 62
    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move-object/from16 v2, v29

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final g(Lm0/S;)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v18, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget v8, v0, LB0/v0;->e:I

    .line 18
    .line 19
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 20
    .line 21
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 22
    .line 23
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 24
    .line 25
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 26
    .line 27
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 28
    .line 29
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 30
    .line 31
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 32
    .line 33
    move-object/from16 p1, v1

    .line 34
    .line 35
    iget v1, v0, LB0/v0;->m:I

    .line 36
    .line 37
    move/from16 v16, v1

    .line 38
    .line 39
    iget v1, v0, LB0/v0;->n:I

    .line 40
    .line 41
    move/from16 v17, v1

    .line 42
    .line 43
    move-object/from16 v29, v2

    .line 44
    .line 45
    iget-wide v1, v0, LB0/v0;->q:J

    .line 46
    .line 47
    move-wide/from16 v19, v1

    .line 48
    .line 49
    iget-wide v1, v0, LB0/v0;->r:J

    .line 50
    .line 51
    move-wide/from16 v21, v1

    .line 52
    .line 53
    iget-wide v1, v0, LB0/v0;->s:J

    .line 54
    .line 55
    move-wide/from16 v23, v1

    .line 56
    .line 57
    iget-wide v1, v0, LB0/v0;->t:J

    .line 58
    .line 59
    move-wide/from16 v25, v1

    .line 60
    .line 61
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 62
    .line 63
    move/from16 v27, v1

    .line 64
    .line 65
    move-object/from16 v1, p1

    .line 66
    .line 67
    move-object/from16 v2, v29

    .line 68
    .line 69
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 70
    .line 71
    .line 72
    return-object v28
.end method

.method public final h(I)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 18
    .line 19
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 20
    .line 21
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 22
    .line 23
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 24
    .line 25
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 26
    .line 27
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 p1, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v29, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->s:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, LB0/v0;->t:J

    .line 60
    .line 61
    move-wide/from16 v25, v1

    .line 62
    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move-object/from16 v2, v29

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final i(Z)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v27, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 10
    .line 11
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 12
    .line 13
    iget-wide v4, v0, LB0/v0;->c:J

    .line 14
    .line 15
    iget-wide v6, v0, LB0/v0;->d:J

    .line 16
    .line 17
    iget v8, v0, LB0/v0;->e:I

    .line 18
    .line 19
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 20
    .line 21
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 22
    .line 23
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 24
    .line 25
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 26
    .line 27
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 28
    .line 29
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 30
    .line 31
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 32
    .line 33
    move-object/from16 p1, v1

    .line 34
    .line 35
    iget v1, v0, LB0/v0;->m:I

    .line 36
    .line 37
    move/from16 v16, v1

    .line 38
    .line 39
    iget v1, v0, LB0/v0;->n:I

    .line 40
    .line 41
    move/from16 v17, v1

    .line 42
    .line 43
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 44
    .line 45
    move-object/from16 v18, v1

    .line 46
    .line 47
    move-object/from16 v29, v2

    .line 48
    .line 49
    iget-wide v1, v0, LB0/v0;->q:J

    .line 50
    .line 51
    move-wide/from16 v19, v1

    .line 52
    .line 53
    iget-wide v1, v0, LB0/v0;->r:J

    .line 54
    .line 55
    move-wide/from16 v21, v1

    .line 56
    .line 57
    iget-wide v1, v0, LB0/v0;->s:J

    .line 58
    .line 59
    move-wide/from16 v23, v1

    .line 60
    .line 61
    iget-wide v1, v0, LB0/v0;->t:J

    .line 62
    .line 63
    move-wide/from16 v25, v1

    .line 64
    .line 65
    move-object/from16 v1, p1

    .line 66
    .line 67
    move-object/from16 v2, v29

    .line 68
    .line 69
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 70
    .line 71
    .line 72
    return-object v28
.end method

.method public final j(Lm0/f0;)LB0/v0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v28, LB0/v0;

    .line 6
    .line 7
    move-object/from16 v1, v28

    .line 8
    .line 9
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 10
    .line 11
    iget-wide v4, v0, LB0/v0;->c:J

    .line 12
    .line 13
    iget-wide v6, v0, LB0/v0;->d:J

    .line 14
    .line 15
    iget v8, v0, LB0/v0;->e:I

    .line 16
    .line 17
    iget-object v9, v0, LB0/v0;->f:LB0/w;

    .line 18
    .line 19
    iget-boolean v10, v0, LB0/v0;->g:Z

    .line 20
    .line 21
    iget-object v11, v0, LB0/v0;->h:LO0/Z;

    .line 22
    .line 23
    iget-object v12, v0, LB0/v0;->i:LR0/y;

    .line 24
    .line 25
    iget-object v13, v0, LB0/v0;->j:Ljava/util/List;

    .line 26
    .line 27
    iget-object v14, v0, LB0/v0;->k:LO0/y;

    .line 28
    .line 29
    iget-boolean v15, v0, LB0/v0;->l:Z

    .line 30
    .line 31
    move-object/from16 p1, v1

    .line 32
    .line 33
    iget v1, v0, LB0/v0;->m:I

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    iget v1, v0, LB0/v0;->n:I

    .line 38
    .line 39
    move/from16 v17, v1

    .line 40
    .line 41
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v29, v2

    .line 46
    .line 47
    iget-wide v1, v0, LB0/v0;->q:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, LB0/v0;->r:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, LB0/v0;->s:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, LB0/v0;->t:J

    .line 60
    .line 61
    move-wide/from16 v25, v1

    .line 62
    .line 63
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 64
    .line 65
    move/from16 v27, v1

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move-object/from16 v2, v29

    .line 70
    .line 71
    invoke-direct/range {v1 .. v27}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 72
    .line 73
    .line 74
    return-object v28
.end method

.method public final l()J
    .locals 7

    .line 1
    invoke-virtual {p0}, LB0/v0;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, LB0/v0;->s:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, LB0/v0;->t:J

    .line 11
    .line 12
    iget-wide v2, p0, LB0/v0;->s:J

    .line 13
    .line 14
    iget-wide v4, p0, LB0/v0;->t:J

    .line 15
    .line 16
    cmp-long v6, v0, v4

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sub-long/2addr v4, v0

    .line 25
    invoke-static {v2, v3}, Lp0/M;->e0(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-float v2, v4

    .line 30
    iget-object v3, p0, LB0/v0;->o:Lm0/S;

    .line 31
    .line 32
    iget v3, v3, Lm0/S;->a:F

    .line 33
    .line 34
    mul-float v2, v2, v3

    .line 35
    .line 36
    float-to-long v2, v2

    .line 37
    add-long/2addr v0, v2

    .line 38
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget v0, p0, LB0/v0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, LB0/v0;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, LB0/v0;->n:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method
