.class public final LE0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE0/b;


# instance fields
.field public final a:LS0/n;

.field public final b:Lm2/i;

.field public final c:[I

.field public final d:I

.field public final e:Ls0/i;

.field public final f:J

.field public final g:I

.field public final h:LE0/s;

.field public final i:[LE0/n;

.field public j:LR0/t;

.field public k:LF0/c;

.field public l:I

.field public m:LO0/b;

.field public n:Z


# direct methods
.method public constructor <init>(LP0/g;LS0/n;LF0/c;Lm2/i;I[ILR0/t;ILs0/i;JIZLjava/util/ArrayList;LE0/s;LC0/I;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object/from16 v5, p2

    .line 15
    .line 16
    iput-object v5, v0, LE0/p;->a:LS0/n;

    .line 17
    .line 18
    iput-object v1, v0, LE0/p;->k:LF0/c;

    .line 19
    .line 20
    iput-object v2, v0, LE0/p;->b:Lm2/i;

    .line 21
    .line 22
    move-object/from16 v5, p6

    .line 23
    .line 24
    iput-object v5, v0, LE0/p;->c:[I

    .line 25
    .line 26
    iput-object v4, v0, LE0/p;->j:LR0/t;

    .line 27
    .line 28
    move/from16 v9, p8

    .line 29
    .line 30
    iput v9, v0, LE0/p;->d:I

    .line 31
    .line 32
    move-object/from16 v5, p9

    .line 33
    .line 34
    iput-object v5, v0, LE0/p;->e:Ls0/i;

    .line 35
    .line 36
    iput v3, v0, LE0/p;->l:I

    .line 37
    .line 38
    move-wide/from16 v5, p10

    .line 39
    .line 40
    iput-wide v5, v0, LE0/p;->f:J

    .line 41
    .line 42
    move/from16 v5, p12

    .line 43
    .line 44
    iput v5, v0, LE0/p;->g:I

    .line 45
    .line 46
    move-object/from16 v10, p15

    .line 47
    .line 48
    iput-object v10, v0, LE0/p;->h:LE0/s;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, LF0/c;->d(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v20

    .line 54
    invoke-virtual/range {p0 .. p0}, LE0/p;->a()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v15, v4

    .line 59
    check-cast v15, LR0/c;

    .line 60
    .line 61
    invoke-virtual {v15}, LR0/c;->q()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    new-array v3, v3, [LE0/n;

    .line 66
    .line 67
    iput-object v3, v0, LE0/p;->i:[LE0/n;

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    :goto_0
    iget-object v3, v0, LE0/p;->i:[LE0/n;

    .line 72
    .line 73
    array-length v3, v3

    .line 74
    if-ge v12, v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v15, v12}, LR0/c;->k(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v13, v3

    .line 85
    check-cast v13, LF0/m;

    .line 86
    .line 87
    iget-object v3, v13, LF0/m;->b:Lz4/H;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lm2/i;->q(Lz4/H;)LF0/b;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v11, v0, LE0/p;->i:[LE0/n;

    .line 94
    .line 95
    new-instance v22, LE0/n;

    .line 96
    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    :goto_1
    move-object/from16 v16, v3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_0
    iget-object v3, v13, LF0/m;->b:Lz4/H;

    .line 103
    .line 104
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, LF0/b;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_2
    iget-object v5, v13, LF0/m;->a:Lm0/t;

    .line 112
    .line 113
    move-object/from16 v3, p1

    .line 114
    .line 115
    check-cast v3, Ll/a;

    .line 116
    .line 117
    move/from16 v4, p8

    .line 118
    .line 119
    move/from16 v6, p13

    .line 120
    .line 121
    move-object/from16 v7, p14

    .line 122
    .line 123
    move-object/from16 v8, p15

    .line 124
    .line 125
    invoke-virtual/range {v3 .. v8}, Ll/a;->d(ILm0/t;ZLjava/util/ArrayList;LW0/L;)LP0/e;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-wide/16 v17, 0x0

    .line 130
    .line 131
    invoke-virtual {v13}, LF0/m;->l()LE0/k;

    .line 132
    .line 133
    .line 134
    move-result-object v19

    .line 135
    move-object v4, v11

    .line 136
    move-object/from16 v11, v22

    .line 137
    .line 138
    move v5, v12

    .line 139
    move-object v6, v13

    .line 140
    move-wide/from16 v12, v20

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    move-object v14, v6

    .line 144
    move-object v6, v15

    .line 145
    move-object/from16 v15, v16

    .line 146
    .line 147
    move-object/from16 v16, v3

    .line 148
    .line 149
    invoke-direct/range {v11 .. v19}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 150
    .line 151
    .line 152
    aput-object v22, v4, v5

    .line 153
    .line 154
    add-int/lit8 v12, v5, 0x1

    .line 155
    .line 156
    move-object v15, v6

    .line 157
    const/4 v14, 0x0

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, LE0/p;->k:LF0/c;

    .line 2
    .line 3
    iget v1, p0, LE0/p;->l:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LF0/c;->b(I)LF0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, LF0/h;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, LE0/p;->c:[I

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    aget v5, v2, v4

    .line 23
    .line 24
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, LF0/a;

    .line 29
    .line 30
    iget-object v5, v5, LF0/a;->c:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public final b(I)LE0/n;
    .locals 13

    .line 1
    iget-object v0, p0, LE0/p;->i:[LE0/n;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    iget-object v2, v1, LE0/n;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LF0/m;

    .line 8
    .line 9
    iget-object v2, v2, LF0/m;->b:Lz4/H;

    .line 10
    .line 11
    iget-object v3, p0, LE0/p;->b:Lm2/i;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lm2/i;->q(Lz4/H;)LF0/b;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, LE0/n;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, LF0/b;

    .line 22
    .line 23
    invoke-virtual {v8, v2}, LF0/b;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, LE0/n;

    .line 30
    .line 31
    iget-object v3, v1, LE0/n;->e:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v7, v3

    .line 34
    check-cast v7, LF0/m;

    .line 35
    .line 36
    iget-object v3, v1, LE0/n;->d:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v9, v3

    .line 39
    check-cast v9, LP0/i;

    .line 40
    .line 41
    iget-object v3, v1, LE0/n;->g:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v12, v3

    .line 44
    check-cast v12, LE0/k;

    .line 45
    .line 46
    iget-wide v5, v1, LE0/n;->b:J

    .line 47
    .line 48
    iget-wide v10, v1, LE0/n;->c:J

    .line 49
    .line 50
    move-object v4, v2

    .line 51
    invoke-direct/range {v4 .. v12}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 52
    .line 53
    .line 54
    aput-object v2, v0, p1

    .line 55
    .line 56
    move-object v1, v2

    .line 57
    :cond_0
    return-object v1
.end method

.method public final c(LR0/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE0/p;->j:LR0/t;

    .line 2
    .line 3
    return-void
.end method
