.class public final Lm2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ld2/e;

.field public final f:Ld2/e;

.field public final g:J

.field public final h:J

.field public final i:J

.field public j:Ld2/d;

.field public final k:I

.field public final l:I

.field public final m:J

.field public n:J

.field public final o:J

.field public final p:J

.field public q:Z

.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "WorkSpec"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ld2/e;Ld2/e;JJJLd2/d;IIJJJJZIII)V
    .locals 10

    .line 1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move/from16 v7, p15

    move/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, Lt/a;->f(ILjava/lang/String;)V

    const-string v9, "workerClassName"

    invoke-static {p3, v9}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Lt/a;->f(ILjava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Lt/a;->f(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lm2/q;->a:Ljava/lang/String;

    .line 4
    iput v2, v0, Lm2/q;->b:I

    .line 5
    iput-object v3, v0, Lm2/q;->c:Ljava/lang/String;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lm2/q;->d:Ljava/lang/String;

    .line 7
    iput-object v4, v0, Lm2/q;->e:Ld2/e;

    .line 8
    iput-object v5, v0, Lm2/q;->f:Ld2/e;

    move-wide/from16 v1, p7

    .line 9
    iput-wide v1, v0, Lm2/q;->g:J

    move-wide/from16 v1, p9

    .line 10
    iput-wide v1, v0, Lm2/q;->h:J

    move-wide/from16 v1, p11

    .line 11
    iput-wide v1, v0, Lm2/q;->i:J

    .line 12
    iput-object v6, v0, Lm2/q;->j:Ld2/d;

    move/from16 v1, p14

    .line 13
    iput v1, v0, Lm2/q;->k:I

    .line 14
    iput v7, v0, Lm2/q;->l:I

    move-wide/from16 v1, p16

    .line 15
    iput-wide v1, v0, Lm2/q;->m:J

    move-wide/from16 v1, p18

    .line 16
    iput-wide v1, v0, Lm2/q;->n:J

    move-wide/from16 v1, p20

    .line 17
    iput-wide v1, v0, Lm2/q;->o:J

    move-wide/from16 v1, p22

    .line 18
    iput-wide v1, v0, Lm2/q;->p:J

    move/from16 v1, p24

    .line 19
    iput-boolean v1, v0, Lm2/q;->q:Z

    .line 20
    iput v8, v0, Lm2/q;->r:I

    move/from16 v1, p26

    .line 21
    iput v1, v0, Lm2/q;->s:I

    move/from16 v1, p27

    .line 22
    iput v1, v0, Lm2/q;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ld2/e;Ld2/e;JJJLd2/d;IIJJJJZIIII)V
    .locals 31

    .line 23
    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 24
    const-string v3, "EMPTY"

    if-eqz v1, :cond_2

    .line 25
    sget-object v1, Ld2/e;->c:Ld2/e;

    invoke-static {v1, v3}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 26
    sget-object v1, Ld2/e;->c:Ld2/e;

    invoke-static {v1, v3}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    move-wide v10, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v12, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v14, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 27
    sget-object v1, Ld2/d;->i:Ld2/d;

    move-object/from16 v16, v1

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const/16 v18, 0x1

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v19, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v21, v3

    goto :goto_b

    :cond_b
    move-wide/from16 v21, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v23, v3

    goto :goto_c

    :cond_c
    move-wide/from16 v23, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v3, -0x1

    move-wide/from16 v25, v3

    goto :goto_d

    :cond_d
    move-wide/from16 v25, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    const/16 v27, 0x0

    goto :goto_e

    :cond_e
    move/from16 v27, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/16 v28, 0x1

    goto :goto_f

    :cond_f
    move/from16 v28, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/16 v29, 0x0

    goto :goto_10

    :cond_10
    move/from16 v29, p26

    :goto_10
    const/16 v30, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    .line 28
    invoke-direct/range {v3 .. v30}, Lm2/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ld2/e;Ld2/e;JJJLd2/d;IIJJJJZIII)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 10

    .line 1
    iget v0, p0, Lm2/q;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lm2/q;->k:I

    .line 7
    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-wide v2, p0, Lm2/q;->m:J

    .line 11
    .line 12
    iget v4, p0, Lm2/q;->l:I

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    int-to-long v0, v0

    .line 18
    mul-long v2, v2, v0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    long-to-float v2, v2

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-static {v2, v0}, Ljava/lang/Math;->scalb(FI)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    float-to-long v2, v0

    .line 28
    :goto_0
    iget-wide v0, p0, Lm2/q;->n:J

    .line 29
    .line 30
    const-wide/32 v4, 0x112a880

    .line 31
    .line 32
    .line 33
    cmp-long v6, v2, v4

    .line 34
    .line 35
    if-lez v6, :cond_1

    .line 36
    .line 37
    move-wide v2, v4

    .line 38
    :cond_1
    add-long/2addr v2, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p0}, Lm2/q;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-wide v1, p0, Lm2/q;->g:J

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    iget v0, p0, Lm2/q;->s:I

    .line 51
    .line 52
    iget-wide v5, p0, Lm2/q;->n:J

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    add-long/2addr v5, v1

    .line 57
    :cond_3
    iget-wide v1, p0, Lm2/q;->i:J

    .line 58
    .line 59
    iget-wide v7, p0, Lm2/q;->h:J

    .line 60
    .line 61
    cmp-long v9, v1, v7

    .line 62
    .line 63
    if-eqz v9, :cond_5

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    const/4 v0, -0x1

    .line 68
    int-to-long v3, v0

    .line 69
    mul-long v3, v3, v1

    .line 70
    .line 71
    :cond_4
    add-long/2addr v5, v7

    .line 72
    :goto_1
    add-long v2, v5, v3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-nez v0, :cond_6

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    move-wide v3, v7

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    iget-wide v5, p0, Lm2/q;->n:J

    .line 81
    .line 82
    cmp-long v0, v5, v3

    .line 83
    .line 84
    if-nez v0, :cond_8

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    :cond_8
    add-long v2, v5, v1

    .line 91
    .line 92
    :goto_2
    return-wide v2
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Ld2/d;->i:Ld2/d;

    .line 2
    .line 3
    iget-object v1, p0, Lm2/q;->j:Ld2/d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lm2/q;->h:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lm2/q;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lm2/q;

    .line 12
    .line 13
    iget-object v1, p1, Lm2/q;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lm2/q;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lm2/q;->b:I

    .line 25
    .line 26
    iget v3, p1, Lm2/q;->b:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lm2/q;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lm2/q;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lm2/q;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lm2/q;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lm2/q;->e:Ld2/e;

    .line 54
    .line 55
    iget-object v3, p1, Lm2/q;->e:Ld2/e;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lm2/q;->f:Ld2/e;

    .line 65
    .line 66
    iget-object v3, p1, Lm2/q;->f:Ld2/e;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, Lm2/q;->g:J

    .line 76
    .line 77
    iget-wide v5, p1, Lm2/q;->g:J

    .line 78
    .line 79
    cmp-long v1, v3, v5

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-wide v3, p0, Lm2/q;->h:J

    .line 85
    .line 86
    iget-wide v5, p1, Lm2/q;->h:J

    .line 87
    .line 88
    cmp-long v1, v3, v5

    .line 89
    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-wide v3, p0, Lm2/q;->i:J

    .line 94
    .line 95
    iget-wide v5, p1, Lm2/q;->i:J

    .line 96
    .line 97
    cmp-long v1, v3, v5

    .line 98
    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-object v1, p0, Lm2/q;->j:Ld2/d;

    .line 103
    .line 104
    iget-object v3, p1, Lm2/q;->j:Ld2/d;

    .line 105
    .line 106
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    .line 112
    return v2

    .line 113
    :cond_b
    iget v1, p0, Lm2/q;->k:I

    .line 114
    .line 115
    iget v3, p1, Lm2/q;->k:I

    .line 116
    .line 117
    if-eq v1, v3, :cond_c

    .line 118
    .line 119
    return v2

    .line 120
    :cond_c
    iget v1, p0, Lm2/q;->l:I

    .line 121
    .line 122
    iget v3, p1, Lm2/q;->l:I

    .line 123
    .line 124
    if-eq v1, v3, :cond_d

    .line 125
    .line 126
    return v2

    .line 127
    :cond_d
    iget-wide v3, p0, Lm2/q;->m:J

    .line 128
    .line 129
    iget-wide v5, p1, Lm2/q;->m:J

    .line 130
    .line 131
    cmp-long v1, v3, v5

    .line 132
    .line 133
    if-eqz v1, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    iget-wide v3, p0, Lm2/q;->n:J

    .line 137
    .line 138
    iget-wide v5, p1, Lm2/q;->n:J

    .line 139
    .line 140
    cmp-long v1, v3, v5

    .line 141
    .line 142
    if-eqz v1, :cond_f

    .line 143
    .line 144
    return v2

    .line 145
    :cond_f
    iget-wide v3, p0, Lm2/q;->o:J

    .line 146
    .line 147
    iget-wide v5, p1, Lm2/q;->o:J

    .line 148
    .line 149
    cmp-long v1, v3, v5

    .line 150
    .line 151
    if-eqz v1, :cond_10

    .line 152
    .line 153
    return v2

    .line 154
    :cond_10
    iget-wide v3, p0, Lm2/q;->p:J

    .line 155
    .line 156
    iget-wide v5, p1, Lm2/q;->p:J

    .line 157
    .line 158
    cmp-long v1, v3, v5

    .line 159
    .line 160
    if-eqz v1, :cond_11

    .line 161
    .line 162
    return v2

    .line 163
    :cond_11
    iget-boolean v1, p0, Lm2/q;->q:Z

    .line 164
    .line 165
    iget-boolean v3, p1, Lm2/q;->q:Z

    .line 166
    .line 167
    if-eq v1, v3, :cond_12

    .line 168
    .line 169
    return v2

    .line 170
    :cond_12
    iget v1, p0, Lm2/q;->r:I

    .line 171
    .line 172
    iget v3, p1, Lm2/q;->r:I

    .line 173
    .line 174
    if-eq v1, v3, :cond_13

    .line 175
    .line 176
    return v2

    .line 177
    :cond_13
    iget v1, p0, Lm2/q;->s:I

    .line 178
    .line 179
    iget v3, p1, Lm2/q;->s:I

    .line 180
    .line 181
    if-eq v1, v3, :cond_14

    .line 182
    .line 183
    return v2

    .line 184
    :cond_14
    iget v1, p0, Lm2/q;->t:I

    .line 185
    .line 186
    iget p1, p1, Lm2/q;->t:I

    .line 187
    .line 188
    if-eq v1, p1, :cond_15

    .line 189
    .line 190
    return v2

    .line 191
    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lm2/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v2, p0, Lm2/q;->b:I

    .line 12
    .line 13
    invoke-static {v2}, Lu/h;->b(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v0

    .line 18
    mul-int/lit8 v2, v2, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lm2/q;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/U2;->e(Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lm2/q;->d:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :goto_0
    add-int/2addr v0, v2

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v2, p0, Lm2/q;->e:Ld2/e;

    .line 40
    .line 41
    invoke-virtual {v2}, Ld2/e;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    mul-int/lit8 v2, v2, 0x1f

    .line 47
    .line 48
    iget-object v0, p0, Lm2/q;->f:Ld2/e;

    .line 49
    .line 50
    invoke-virtual {v0}, Ld2/e;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-wide v2, p0, Lm2/q;->g:J

    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    ushr-long v5, v2, v4

    .line 62
    .line 63
    xor-long/2addr v2, v5

    .line 64
    long-to-int v3, v2

    .line 65
    add-int/2addr v0, v3

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-wide v2, p0, Lm2/q;->h:J

    .line 69
    .line 70
    ushr-long v5, v2, v4

    .line 71
    .line 72
    xor-long/2addr v2, v5

    .line 73
    long-to-int v3, v2

    .line 74
    add-int/2addr v0, v3

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-wide v2, p0, Lm2/q;->i:J

    .line 78
    .line 79
    ushr-long v5, v2, v4

    .line 80
    .line 81
    xor-long/2addr v2, v5

    .line 82
    long-to-int v3, v2

    .line 83
    add-int/2addr v0, v3

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v2, p0, Lm2/q;->j:Ld2/d;

    .line 87
    .line 88
    invoke-virtual {v2}, Ld2/d;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    add-int/2addr v2, v0

    .line 93
    mul-int/lit8 v2, v2, 0x1f

    .line 94
    .line 95
    iget v0, p0, Lm2/q;->k:I

    .line 96
    .line 97
    add-int/2addr v2, v0

    .line 98
    mul-int/lit8 v2, v2, 0x1f

    .line 99
    .line 100
    iget v0, p0, Lm2/q;->l:I

    .line 101
    .line 102
    invoke-static {v0}, Lu/h;->b(I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-wide v2, p0, Lm2/q;->m:J

    .line 110
    .line 111
    ushr-long v5, v2, v4

    .line 112
    .line 113
    xor-long/2addr v2, v5

    .line 114
    long-to-int v3, v2

    .line 115
    add-int/2addr v0, v3

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-wide v2, p0, Lm2/q;->n:J

    .line 119
    .line 120
    ushr-long v5, v2, v4

    .line 121
    .line 122
    xor-long/2addr v2, v5

    .line 123
    long-to-int v3, v2

    .line 124
    add-int/2addr v0, v3

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    iget-wide v2, p0, Lm2/q;->o:J

    .line 128
    .line 129
    ushr-long v5, v2, v4

    .line 130
    .line 131
    xor-long/2addr v2, v5

    .line 132
    long-to-int v3, v2

    .line 133
    add-int/2addr v0, v3

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget-wide v2, p0, Lm2/q;->p:J

    .line 137
    .line 138
    ushr-long v4, v2, v4

    .line 139
    .line 140
    xor-long/2addr v2, v4

    .line 141
    long-to-int v3, v2

    .line 142
    add-int/2addr v0, v3

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    .line 145
    iget-boolean v2, p0, Lm2/q;->q:Z

    .line 146
    .line 147
    if-eqz v2, :cond_1

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    :cond_1
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget v2, p0, Lm2/q;->r:I

    .line 154
    .line 155
    invoke-static {v2}, Lu/h;->b(I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/2addr v2, v0

    .line 160
    mul-int/lit8 v2, v2, 0x1f

    .line 161
    .line 162
    iget v0, p0, Lm2/q;->s:I

    .line 163
    .line 164
    add-int/2addr v2, v0

    .line 165
    mul-int/lit8 v2, v2, 0x1f

    .line 166
    .line 167
    iget v0, p0, Lm2/q;->t:I

    .line 168
    .line 169
    add-int/2addr v2, v0

    .line 170
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{WorkSpec: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lm2/q;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
