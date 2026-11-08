.class public final Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static q:Z = false


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public final d:Lu/g;

.field public e:I

.field public f:I

.field public g:[Lu/c;

.field public h:Z

.field public i:[Z

.field public j:I

.field public k:I

.field public l:I

.field public final m:Lm2/o;

.field public n:[Lu/i;

.field public o:I

.field public p:Lu/c;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lu/d;->a:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lu/d;->b:Z

    .line 10
    .line 11
    iput v1, p0, Lu/d;->c:I

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    iput v2, p0, Lu/d;->e:I

    .line 16
    .line 17
    iput v2, p0, Lu/d;->f:I

    .line 18
    .line 19
    iput-boolean v1, p0, Lu/d;->h:Z

    .line 20
    .line 21
    new-array v3, v2, [Z

    .line 22
    .line 23
    iput-object v3, p0, Lu/d;->i:[Z

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iput v3, p0, Lu/d;->j:I

    .line 27
    .line 28
    iput v1, p0, Lu/d;->k:I

    .line 29
    .line 30
    iput v2, p0, Lu/d;->l:I

    .line 31
    .line 32
    new-array v0, v0, [Lu/i;

    .line 33
    .line 34
    iput-object v0, p0, Lu/d;->n:[Lu/i;

    .line 35
    .line 36
    iput v1, p0, Lu/d;->o:I

    .line 37
    .line 38
    new-array v0, v2, [Lu/c;

    .line 39
    .line 40
    iput-object v0, p0, Lu/d;->g:[Lu/c;

    .line 41
    .line 42
    invoke-virtual {p0}, Lu/d;->s()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lm2/o;

    .line 46
    .line 47
    invoke-direct {v0, v3}, Lm2/o;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lu/d;->m:Lm2/o;

    .line 51
    .line 52
    new-instance v2, Lu/g;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lu/c;-><init>(Lm2/o;)V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x80

    .line 58
    .line 59
    new-array v4, v3, [Lu/i;

    .line 60
    .line 61
    iput-object v4, v2, Lu/g;->f:[Lu/i;

    .line 62
    .line 63
    new-array v3, v3, [Lu/i;

    .line 64
    .line 65
    iput-object v3, v2, Lu/g;->g:[Lu/i;

    .line 66
    .line 67
    iput v1, v2, Lu/g;->h:I

    .line 68
    .line 69
    new-instance v1, Lm2/u;

    .line 70
    .line 71
    invoke-direct {v1, v2, v2}, Lm2/u;-><init>(Lu/g;Lu/g;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, v2, Lu/g;->i:Lm2/u;

    .line 75
    .line 76
    iput-object v2, p0, Lu/d;->d:Lu/g;

    .line 77
    .line 78
    new-instance v1, Lu/c;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lu/c;-><init>(Lm2/o;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lu/d;->p:Lu/c;

    .line 84
    .line 85
    return-void
.end method

.method public static n(Lw/c;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lw/c;->i:Lu/i;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lu/i;->K:F

    .line 6
    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method


# virtual methods
.method public final a(I)Lu/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lu/d;->m:Lm2/o;

    .line 2
    .line 3
    iget-object v0, v0, Lm2/o;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lu/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/e;->h()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lu/i;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lu/i;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lu/i;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput p1, v0, Lu/i;->R:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lu/i;->c()V

    .line 24
    .line 25
    .line 26
    iput p1, v0, Lu/i;->R:I

    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lu/d;->o:I

    .line 29
    .line 30
    iget v1, p0, Lu/d;->a:I

    .line 31
    .line 32
    if-lt p1, v1, :cond_1

    .line 33
    .line 34
    mul-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    iput v1, p0, Lu/d;->a:I

    .line 37
    .line 38
    iget-object p1, p0, Lu/d;->n:[Lu/i;

    .line 39
    .line 40
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Lu/i;

    .line 45
    .line 46
    iput-object p1, p0, Lu/d;->n:[Lu/i;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lu/d;->n:[Lu/i;

    .line 49
    .line 50
    iget v1, p0, Lu/d;->o:I

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    iput v2, p0, Lu/d;->o:I

    .line 55
    .line 56
    aput-object v0, p1, v1

    .line 57
    .line 58
    return-object v0
.end method

.method public final b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-ne p2, p5, :cond_0

    .line 8
    .line 9
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 10
    .line 11
    invoke-interface {p3, p1, v1}, Lu/b;->j(Lu/i;F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 15
    .line 16
    invoke-interface {p1, p6, v1}, Lu/b;->j(Lu/i;F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    const/high16 p3, -0x40000000    # -2.0f

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Lu/b;->j(Lu/i;F)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    const/high16 v3, -0x40800000    # -1.0f

    .line 31
    .line 32
    cmpl-float v2, p4, v2

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object p4, v0, Lu/c;->d:Lu/b;

    .line 37
    .line 38
    invoke-interface {p4, p1, v1}, Lu/b;->j(Lu/i;F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 42
    .line 43
    invoke-interface {p1, p2, v3}, Lu/b;->j(Lu/i;F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 47
    .line 48
    invoke-interface {p1, p5, v3}, Lu/b;->j(Lu/i;F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 52
    .line 53
    invoke-interface {p1, p6, v1}, Lu/b;->j(Lu/i;F)V

    .line 54
    .line 55
    .line 56
    if-gtz p3, :cond_1

    .line 57
    .line 58
    if-lez p7, :cond_6

    .line 59
    .line 60
    :cond_1
    neg-int p1, p3

    .line 61
    add-int/2addr p1, p7

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, v0, Lu/c;->b:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, p4, v2

    .line 68
    .line 69
    if-gtz v2, :cond_3

    .line 70
    .line 71
    iget-object p4, v0, Lu/c;->d:Lu/b;

    .line 72
    .line 73
    invoke-interface {p4, p1, v3}, Lu/b;->j(Lu/i;F)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 77
    .line 78
    invoke-interface {p1, p2, v1}, Lu/b;->j(Lu/i;F)V

    .line 79
    .line 80
    .line 81
    int-to-float p1, p3

    .line 82
    iput p1, v0, Lu/c;->b:F

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    cmpl-float v2, p4, v1

    .line 86
    .line 87
    if-ltz v2, :cond_4

    .line 88
    .line 89
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 90
    .line 91
    invoke-interface {p1, p6, v3}, Lu/b;->j(Lu/i;F)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 95
    .line 96
    invoke-interface {p1, p5, v1}, Lu/b;->j(Lu/i;F)V

    .line 97
    .line 98
    .line 99
    neg-int p1, p7

    .line 100
    int-to-float p1, p1

    .line 101
    iput p1, v0, Lu/c;->b:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v0, Lu/c;->d:Lu/b;

    .line 105
    .line 106
    sub-float v4, v1, p4

    .line 107
    .line 108
    mul-float v5, v4, v1

    .line 109
    .line 110
    invoke-interface {v2, p1, v5}, Lu/b;->j(Lu/i;F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 114
    .line 115
    mul-float v2, v4, v3

    .line 116
    .line 117
    invoke-interface {p1, p2, v2}, Lu/b;->j(Lu/i;F)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 121
    .line 122
    mul-float v3, v3, p4

    .line 123
    .line 124
    invoke-interface {p1, p5, v3}, Lu/b;->j(Lu/i;F)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 128
    .line 129
    mul-float v1, v1, p4

    .line 130
    .line 131
    invoke-interface {p1, p6, v1}, Lu/b;->j(Lu/i;F)V

    .line 132
    .line 133
    .line 134
    if-gtz p3, :cond_5

    .line 135
    .line 136
    if-lez p7, :cond_6

    .line 137
    .line 138
    :cond_5
    neg-int p1, p3

    .line 139
    int-to-float p1, p1

    .line 140
    mul-float p1, p1, v4

    .line 141
    .line 142
    int-to-float p2, p7

    .line 143
    mul-float p2, p2, p4

    .line 144
    .line 145
    add-float/2addr p2, p1

    .line 146
    iput p2, v0, Lu/c;->b:F

    .line 147
    .line 148
    :cond_6
    :goto_0
    const/16 p1, 0x8

    .line 149
    .line 150
    if-eq p8, p1, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0, p0, p8}, Lu/c;->a(Lu/d;I)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {p0, v0}, Lu/d;->c(Lu/c;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final c(Lu/c;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lu/d;->k:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    iget v4, v0, Lu/d;->l:I

    .line 10
    .line 11
    if-ge v2, v4, :cond_0

    .line 12
    .line 13
    iget v2, v0, Lu/d;->j:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v4, v0, Lu/d;->f:I

    .line 17
    .line 18
    if-lt v2, v4, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu/d;->o()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v2, v1, Lu/c;->e:Z

    .line 24
    .line 25
    if-nez v2, :cond_20

    .line 26
    .line 27
    iget-object v2, v0, Lu/d;->g:[Lu/c;

    .line 28
    .line 29
    array-length v2, v2

    .line 30
    const/4 v4, -0x1

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_5

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-nez v2, :cond_8

    .line 36
    .line 37
    iget-object v6, v1, Lu/c;->d:Lu/b;

    .line 38
    .line 39
    invoke-interface {v6}, Lu/b;->b()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_1
    iget-object v8, v1, Lu/c;->c:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-ge v7, v6, :cond_4

    .line 47
    .line 48
    iget-object v9, v1, Lu/c;->d:Lu/b;

    .line 49
    .line 50
    invoke-interface {v9, v7}, Lu/b;->d(I)Lu/i;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iget v10, v9, Lu/i;->I:I

    .line 55
    .line 56
    if-ne v10, v4, :cond_3

    .line 57
    .line 58
    iget-boolean v10, v9, Lu/i;->L:Z

    .line 59
    .line 60
    if-nez v10, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-lez v6, :cond_7

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    :goto_3
    if-ge v7, v6, :cond_6

    .line 77
    .line 78
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Lu/i;

    .line 83
    .line 84
    iget-boolean v10, v9, Lu/i;->L:Z

    .line 85
    .line 86
    if-eqz v10, :cond_5

    .line 87
    .line 88
    invoke-virtual {v1, v0, v9, v3}, Lu/c;->h(Lu/d;Lu/i;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    iget-object v10, v0, Lu/d;->g:[Lu/c;

    .line 93
    .line 94
    iget v9, v9, Lu/i;->I:I

    .line 95
    .line 96
    aget-object v9, v10, v9

    .line 97
    .line 98
    invoke-virtual {v1, v0, v9, v3}, Lu/c;->i(Lu/d;Lu/c;Z)V

    .line 99
    .line 100
    .line 101
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v2, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_8
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 111
    .line 112
    if-eqz v2, :cond_9

    .line 113
    .line 114
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 115
    .line 116
    invoke-interface {v2}, Lu/b;->b()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    iput-boolean v3, v1, Lu/c;->e:Z

    .line 123
    .line 124
    iput-boolean v3, v0, Lu/d;->b:Z

    .line 125
    .line 126
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lu/c;->e()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_a

    .line 131
    .line 132
    return-void

    .line 133
    :cond_a
    iget v2, v1, Lu/c;->b:F

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    cmpg-float v7, v2, v6

    .line 137
    .line 138
    if-gez v7, :cond_b

    .line 139
    .line 140
    const/high16 v7, -0x40800000    # -1.0f

    .line 141
    .line 142
    mul-float v2, v2, v7

    .line 143
    .line 144
    iput v2, v1, Lu/c;->b:F

    .line 145
    .line 146
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 147
    .line 148
    invoke-interface {v2}, Lu/b;->e()V

    .line 149
    .line 150
    .line 151
    :cond_b
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 152
    .line 153
    invoke-interface {v2}, Lu/b;->b()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v7, 0x0

    .line 158
    move-object v9, v7

    .line 159
    move-object v10, v9

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v11, 0x0

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    :goto_6
    if-ge v8, v2, :cond_14

    .line 166
    .line 167
    iget-object v15, v1, Lu/c;->d:Lu/b;

    .line 168
    .line 169
    invoke-interface {v15, v8}, Lu/b;->f(I)F

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    iget-object v5, v1, Lu/c;->d:Lu/b;

    .line 174
    .line 175
    invoke-interface {v5, v8}, Lu/b;->d(I)Lu/i;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iget v4, v5, Lu/i;->R:I

    .line 180
    .line 181
    if-ne v4, v3, :cond_f

    .line 182
    .line 183
    if-nez v9, :cond_d

    .line 184
    .line 185
    iget v4, v5, Lu/i;->Q:I

    .line 186
    .line 187
    if-gt v4, v3, :cond_c

    .line 188
    .line 189
    :goto_7
    const/4 v12, 0x1

    .line 190
    goto :goto_8

    .line 191
    :cond_c
    const/4 v12, 0x0

    .line 192
    :goto_8
    move-object v9, v5

    .line 193
    move v11, v15

    .line 194
    goto :goto_b

    .line 195
    :cond_d
    cmpl-float v4, v11, v15

    .line 196
    .line 197
    if-lez v4, :cond_e

    .line 198
    .line 199
    iget v4, v5, Lu/i;->Q:I

    .line 200
    .line 201
    if-gt v4, v3, :cond_c

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_e
    if-nez v12, :cond_13

    .line 205
    .line 206
    iget v4, v5, Lu/i;->Q:I

    .line 207
    .line 208
    if-gt v4, v3, :cond_13

    .line 209
    .line 210
    move-object v9, v5

    .line 211
    move v11, v15

    .line 212
    const/4 v12, 0x1

    .line 213
    goto :goto_b

    .line 214
    :cond_f
    if-nez v9, :cond_13

    .line 215
    .line 216
    cmpg-float v4, v15, v6

    .line 217
    .line 218
    if-gez v4, :cond_13

    .line 219
    .line 220
    if-nez v10, :cond_11

    .line 221
    .line 222
    iget v4, v5, Lu/i;->Q:I

    .line 223
    .line 224
    if-gt v4, v3, :cond_10

    .line 225
    .line 226
    :goto_9
    const/4 v14, 0x1

    .line 227
    goto :goto_a

    .line 228
    :cond_10
    const/4 v14, 0x0

    .line 229
    :goto_a
    move-object v10, v5

    .line 230
    move v13, v15

    .line 231
    goto :goto_b

    .line 232
    :cond_11
    cmpl-float v4, v13, v15

    .line 233
    .line 234
    if-lez v4, :cond_12

    .line 235
    .line 236
    iget v4, v5, Lu/i;->Q:I

    .line 237
    .line 238
    if-gt v4, v3, :cond_10

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_12
    if-nez v14, :cond_13

    .line 242
    .line 243
    iget v4, v5, Lu/i;->Q:I

    .line 244
    .line 245
    if-gt v4, v3, :cond_13

    .line 246
    .line 247
    move-object v10, v5

    .line 248
    move v13, v15

    .line 249
    const/4 v14, 0x1

    .line 250
    :cond_13
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 251
    .line 252
    const/4 v4, -0x1

    .line 253
    goto :goto_6

    .line 254
    :cond_14
    if-eqz v9, :cond_15

    .line 255
    .line 256
    goto :goto_c

    .line 257
    :cond_15
    move-object v9, v10

    .line 258
    :goto_c
    if-nez v9, :cond_16

    .line 259
    .line 260
    const/4 v2, 0x1

    .line 261
    goto :goto_d

    .line 262
    :cond_16
    invoke-virtual {v1, v9}, Lu/c;->g(Lu/i;)V

    .line 263
    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    :goto_d
    iget-object v4, v1, Lu/c;->d:Lu/b;

    .line 267
    .line 268
    invoke-interface {v4}, Lu/b;->b()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_17

    .line 273
    .line 274
    iput-boolean v3, v1, Lu/c;->e:Z

    .line 275
    .line 276
    :cond_17
    if-eqz v2, :cond_1d

    .line 277
    .line 278
    iget v2, v0, Lu/d;->j:I

    .line 279
    .line 280
    add-int/2addr v2, v3

    .line 281
    iget v4, v0, Lu/d;->f:I

    .line 282
    .line 283
    if-lt v2, v4, :cond_18

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lu/d;->o()V

    .line 286
    .line 287
    .line 288
    :cond_18
    const/4 v2, 0x3

    .line 289
    invoke-virtual {v0, v2}, Lu/d;->a(I)Lu/i;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iget v4, v0, Lu/d;->c:I

    .line 294
    .line 295
    add-int/2addr v4, v3

    .line 296
    iput v4, v0, Lu/d;->c:I

    .line 297
    .line 298
    iget v5, v0, Lu/d;->j:I

    .line 299
    .line 300
    add-int/2addr v5, v3

    .line 301
    iput v5, v0, Lu/d;->j:I

    .line 302
    .line 303
    iput v4, v2, Lu/i;->H:I

    .line 304
    .line 305
    iget-object v5, v0, Lu/d;->m:Lm2/o;

    .line 306
    .line 307
    iget-object v8, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v8, [Lu/i;

    .line 310
    .line 311
    aput-object v2, v8, v4

    .line 312
    .line 313
    iput-object v2, v1, Lu/c;->a:Lu/i;

    .line 314
    .line 315
    iget v4, v0, Lu/d;->k:I

    .line 316
    .line 317
    invoke-virtual/range {p0 .. p1}, Lu/d;->h(Lu/c;)V

    .line 318
    .line 319
    .line 320
    iget v8, v0, Lu/d;->k:I

    .line 321
    .line 322
    add-int/2addr v4, v3

    .line 323
    if-ne v8, v4, :cond_1d

    .line 324
    .line 325
    iget-object v4, v0, Lu/d;->p:Lu/c;

    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iput-object v7, v4, Lu/c;->a:Lu/i;

    .line 331
    .line 332
    iget-object v8, v4, Lu/c;->d:Lu/b;

    .line 333
    .line 334
    invoke-interface {v8}, Lu/b;->clear()V

    .line 335
    .line 336
    .line 337
    const/4 v8, 0x0

    .line 338
    :goto_e
    iget-object v9, v1, Lu/c;->d:Lu/b;

    .line 339
    .line 340
    invoke-interface {v9}, Lu/b;->b()I

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    if-ge v8, v9, :cond_19

    .line 345
    .line 346
    iget-object v9, v1, Lu/c;->d:Lu/b;

    .line 347
    .line 348
    invoke-interface {v9, v8}, Lu/b;->d(I)Lu/i;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    iget-object v10, v1, Lu/c;->d:Lu/b;

    .line 353
    .line 354
    invoke-interface {v10, v8}, Lu/b;->f(I)F

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    iget-object v11, v4, Lu/c;->d:Lu/b;

    .line 359
    .line 360
    invoke-interface {v11, v9, v10, v3}, Lu/b;->h(Lu/i;FZ)V

    .line 361
    .line 362
    .line 363
    add-int/lit8 v8, v8, 0x1

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_19
    iget-object v4, v0, Lu/d;->p:Lu/c;

    .line 367
    .line 368
    invoke-virtual {v0, v4}, Lu/d;->r(Lu/c;)V

    .line 369
    .line 370
    .line 371
    iget v4, v2, Lu/i;->I:I

    .line 372
    .line 373
    const/4 v8, -0x1

    .line 374
    if-ne v4, v8, :cond_1c

    .line 375
    .line 376
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 377
    .line 378
    if-ne v4, v2, :cond_1a

    .line 379
    .line 380
    invoke-virtual {v1, v7, v2}, Lu/c;->f([ZLu/i;)Lu/i;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    if-eqz v2, :cond_1a

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Lu/c;->g(Lu/i;)V

    .line 387
    .line 388
    .line 389
    :cond_1a
    iget-boolean v2, v1, Lu/c;->e:Z

    .line 390
    .line 391
    if-nez v2, :cond_1b

    .line 392
    .line 393
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 394
    .line 395
    invoke-virtual {v2, v0, v1}, Lu/i;->e(Lu/d;Lu/c;)V

    .line 396
    .line 397
    .line 398
    :cond_1b
    iget-object v2, v5, Lm2/o;->H:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v2, Lu/e;

    .line 401
    .line 402
    invoke-virtual {v2, v1}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    iget v2, v0, Lu/d;->k:I

    .line 406
    .line 407
    sub-int/2addr v2, v3

    .line 408
    iput v2, v0, Lu/d;->k:I

    .line 409
    .line 410
    :cond_1c
    const/4 v5, 0x1

    .line 411
    goto :goto_f

    .line 412
    :cond_1d
    const/4 v5, 0x0

    .line 413
    :goto_f
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 414
    .line 415
    if-eqz v2, :cond_1f

    .line 416
    .line 417
    iget v2, v2, Lu/i;->R:I

    .line 418
    .line 419
    if-eq v2, v3, :cond_1e

    .line 420
    .line 421
    iget v2, v1, Lu/c;->b:F

    .line 422
    .line 423
    cmpg-float v2, v2, v6

    .line 424
    .line 425
    if-ltz v2, :cond_1f

    .line 426
    .line 427
    :cond_1e
    if-nez v5, :cond_21

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_1f
    return-void

    .line 431
    :cond_20
    :goto_10
    invoke-virtual/range {p0 .. p1}, Lu/d;->h(Lu/c;)V

    .line 432
    .line 433
    .line 434
    :cond_21
    return-void
.end method

.method public final d(Lu/i;I)V
    .locals 4

    .line 1
    iget v0, p1, Lu/i;->I:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    invoke-virtual {p1, p0, p2}, Lu/i;->d(Lu/d;F)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget p2, p0, Lu/d;->c:I

    .line 13
    .line 14
    add-int/2addr p2, v1

    .line 15
    if-ge p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lu/d;->m:Lm2/o;

    .line 18
    .line 19
    iget-object p2, p2, Lm2/o;->J:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, [Lu/i;

    .line 22
    .line 23
    aget-object p2, p2, p1

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    if-eq v0, v2, :cond_5

    .line 30
    .line 31
    iget-object v3, p0, Lu/d;->g:[Lu/c;

    .line 32
    .line 33
    aget-object v0, v3, v0

    .line 34
    .line 35
    iget-boolean v3, v0, Lu/c;->e:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    int-to-float p1, p2

    .line 40
    iput p1, v0, Lu/c;->b:F

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v3, v0, Lu/c;->d:Lu/b;

    .line 44
    .line 45
    invoke-interface {v3}, Lu/b;->b()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 52
    .line 53
    int-to-float p1, p2

    .line 54
    iput p1, v0, Lu/c;->b:F

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-gez p2, :cond_4

    .line 62
    .line 63
    mul-int/lit8 p2, p2, -0x1

    .line 64
    .line 65
    int-to-float p2, p2

    .line 66
    iput p2, v0, Lu/c;->b:F

    .line 67
    .line 68
    iget-object p2, v0, Lu/c;->d:Lu/b;

    .line 69
    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-interface {p2, p1, v1}, Lu/b;->j(Lu/i;F)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    int-to-float p2, p2

    .line 77
    iput p2, v0, Lu/c;->b:F

    .line 78
    .line 79
    iget-object p2, v0, Lu/c;->d:Lu/b;

    .line 80
    .line 81
    const/high16 v1, -0x40800000    # -1.0f

    .line 82
    .line 83
    invoke-interface {p2, p1, v1}, Lu/b;->j(Lu/i;F)V

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p0, v0}, Lu/d;->c(Lu/c;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object p1, v0, Lu/c;->a:Lu/i;

    .line 95
    .line 96
    int-to-float p2, p2

    .line 97
    iput p2, p1, Lu/i;->K:F

    .line 98
    .line 99
    iput p2, v0, Lu/c;->b:F

    .line 100
    .line 101
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lu/d;->c(Lu/c;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method public final e(Lu/i;Lu/i;II)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p2, Lu/i;->L:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p1, Lu/i;->I:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget p2, p2, Lu/i;->K:F

    .line 15
    .line 16
    int-to-float p3, p3

    .line 17
    add-float/2addr p2, p3

    .line 18
    invoke-virtual {p1, p0, p2}, Lu/i;->d(Lu/d;F)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    const/high16 v3, -0x40800000    # -1.0f

    .line 29
    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    if-gez p3, :cond_1

    .line 33
    .line 34
    mul-int/lit8 p3, p3, -0x1

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_0
    int-to-float p3, p3

    .line 40
    iput p3, v1, Lu/c;->b:F

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object p3, v1, Lu/c;->d:Lu/b;

    .line 46
    .line 47
    invoke-interface {p3, p1, v2}, Lu/b;->j(Lu/i;F)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v1, Lu/c;->d:Lu/b;

    .line 51
    .line 52
    invoke-interface {p1, p2, v3}, Lu/b;->j(Lu/i;F)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    iget-object p3, v1, Lu/c;->d:Lu/b;

    .line 57
    .line 58
    invoke-interface {p3, p1, v3}, Lu/b;->j(Lu/i;F)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v1, Lu/c;->d:Lu/b;

    .line 62
    .line 63
    invoke-interface {p1, p2, v2}, Lu/b;->j(Lu/i;F)V

    .line 64
    .line 65
    .line 66
    :goto_2
    if-eq p4, v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1, p0, p4}, Lu/c;->a(Lu/d;I)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p0, v1}, Lu/d;->c(Lu/c;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final f(Lu/i;Lu/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/d;->m()Lu/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lu/i;->J:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lu/c;->b(Lu/i;Lu/i;Lu/i;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lu/b;->i(Lu/i;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float p1, p1, p2

    .line 28
    .line 29
    float-to-int p1, p1

    .line 30
    invoke-virtual {p0, p4}, Lu/d;->j(I)Lu/i;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    invoke-interface {p3, p2, p1}, Lu/b;->j(Lu/i;F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lu/d;->c(Lu/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final g(Lu/i;Lu/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/d;->l()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/d;->m()Lu/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lu/i;->J:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lu/c;->c(Lu/i;Lu/i;Lu/i;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lu/b;->i(Lu/i;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float p1, p1, p2

    .line 28
    .line 29
    float-to-int p1, p1

    .line 30
    invoke-virtual {p0, p4}, Lu/d;->j(I)Lu/i;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    invoke-interface {p3, p2, p1}, Lu/b;->j(Lu/i;F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lu/d;->c(Lu/c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final h(Lu/c;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lu/c;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lu/c;->a:Lu/i;

    .line 6
    .line 7
    iget p1, p1, Lu/c;->b:F

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lu/i;->d(Lu/d;F)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lu/d;->g:[Lu/c;

    .line 14
    .line 15
    iget v1, p0, Lu/d;->k:I

    .line 16
    .line 17
    aput-object p1, v0, v1

    .line 18
    .line 19
    iget-object v0, p1, Lu/c;->a:Lu/i;

    .line 20
    .line 21
    iput v1, v0, Lu/i;->I:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Lu/d;->k:I

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Lu/i;->e(Lu/d;Lu/c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-boolean p1, p0, Lu/d;->b:Z

    .line 31
    .line 32
    if-eqz p1, :cond_7

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_1
    iget v1, p0, Lu/d;->k:I

    .line 37
    .line 38
    if-ge v0, v1, :cond_6

    .line 39
    .line 40
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 47
    .line 48
    const-string v2, "WTF"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 54
    .line 55
    aget-object v1, v1, v0

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget-boolean v2, v1, Lu/c;->e:Z

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 64
    .line 65
    iget v3, v1, Lu/c;->b:F

    .line 66
    .line 67
    invoke-virtual {v2, p0, v3}, Lu/i;->d(Lu/d;F)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lu/d;->m:Lm2/o;

    .line 71
    .line 72
    iget-object v2, v2, Lm2/o;->H:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lu/e;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    aput-object v2, v1, v0

    .line 83
    .line 84
    add-int/lit8 v1, v0, 0x1

    .line 85
    .line 86
    move v3, v1

    .line 87
    :goto_2
    iget v4, p0, Lu/d;->k:I

    .line 88
    .line 89
    if-ge v1, v4, :cond_3

    .line 90
    .line 91
    iget-object v3, p0, Lu/d;->g:[Lu/c;

    .line 92
    .line 93
    add-int/lit8 v4, v1, -0x1

    .line 94
    .line 95
    aget-object v5, v3, v1

    .line 96
    .line 97
    aput-object v5, v3, v4

    .line 98
    .line 99
    iget-object v3, v5, Lu/c;->a:Lu/i;

    .line 100
    .line 101
    iget v5, v3, Lu/i;->I:I

    .line 102
    .line 103
    if-ne v5, v1, :cond_2

    .line 104
    .line 105
    iput v4, v3, Lu/i;->I:I

    .line 106
    .line 107
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 108
    .line 109
    move v6, v3

    .line 110
    move v3, v1

    .line 111
    move v1, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    if-ge v3, v4, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 116
    .line 117
    aput-object v2, v1, v3

    .line 118
    .line 119
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 120
    .line 121
    iput v4, p0, Lu/d;->k:I

    .line 122
    .line 123
    add-int/lit8 v0, v0, -0x1

    .line 124
    .line 125
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    iput-boolean p1, p0, Lu/d;->b:Z

    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lu/d;->k:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 11
    .line 12
    iget v1, v1, Lu/c;->b:F

    .line 13
    .line 14
    iput v1, v2, Lu/i;->K:F

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final j(I)Lu/i;
    .locals 4

    .line 1
    iget v0, p0, Lu/d;->j:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lu/d;->f:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/d;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Lu/d;->a(I)Lu/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lu/d;->c:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lu/d;->c:I

    .line 22
    .line 23
    iget v2, p0, Lu/d;->j:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lu/d;->j:I

    .line 28
    .line 29
    iput v1, v0, Lu/i;->H:I

    .line 30
    .line 31
    iput p1, v0, Lu/i;->J:I

    .line 32
    .line 33
    iget-object p1, p0, Lu/d;->m:Lm2/o;

    .line 34
    .line 35
    iget-object p1, p1, Lm2/o;->J:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, [Lu/i;

    .line 38
    .line 39
    aput-object v0, p1, v1

    .line 40
    .line 41
    iget-object p1, p0, Lu/d;->d:Lu/g;

    .line 42
    .line 43
    iget-object v1, p1, Lu/g;->i:Lm2/u;

    .line 44
    .line 45
    iput-object v0, v1, Lm2/u;->H:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, v0, Lu/i;->N:[F

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 51
    .line 52
    .line 53
    iget v2, v0, Lu/i;->J:I

    .line 54
    .line 55
    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    aput v3, v1, v2

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lu/g;->j(Lu/i;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Lu/i;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Lu/d;->j:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget v3, p0, Lu/d;->f:I

    .line 10
    .line 11
    if-lt v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lu/d;->o()V

    .line 14
    .line 15
    .line 16
    :cond_1
    instance-of v1, p1, Lw/c;

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    check-cast p1, Lw/c;

    .line 21
    .line 22
    iget-object v0, p1, Lw/c;->i:Lu/i;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lw/c;->h()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lw/c;->i:Lu/i;

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    :cond_2
    iget p1, v0, Lu/i;->H:I

    .line 33
    .line 34
    iget-object v1, p0, Lu/d;->m:Lm2/o;

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-eq p1, v3, :cond_3

    .line 38
    .line 39
    iget v4, p0, Lu/d;->c:I

    .line 40
    .line 41
    if-gt p1, v4, :cond_3

    .line 42
    .line 43
    iget-object v4, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, [Lu/i;

    .line 46
    .line 47
    aget-object v4, v4, p1

    .line 48
    .line 49
    if-nez v4, :cond_5

    .line 50
    .line 51
    :cond_3
    if-eq p1, v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lu/i;->c()V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget p1, p0, Lu/d;->c:I

    .line 57
    .line 58
    add-int/2addr p1, v2

    .line 59
    iput p1, p0, Lu/d;->c:I

    .line 60
    .line 61
    iget v3, p0, Lu/d;->j:I

    .line 62
    .line 63
    add-int/2addr v3, v2

    .line 64
    iput v3, p0, Lu/d;->j:I

    .line 65
    .line 66
    iput p1, v0, Lu/i;->H:I

    .line 67
    .line 68
    iput v2, v0, Lu/i;->R:I

    .line 69
    .line 70
    iget-object v1, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, [Lu/i;

    .line 73
    .line 74
    aput-object v0, v1, p1

    .line 75
    .line 76
    :cond_5
    return-object v0
.end method

.method public final l()Lu/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/d;->m:Lm2/o;

    .line 2
    .line 3
    iget-object v1, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu/e;

    .line 6
    .line 7
    invoke-virtual {v1}, Lu/e;->h()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lu/c;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lu/c;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lu/c;-><init>(Lm2/o;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, v1, Lu/c;->a:Lu/i;

    .line 23
    .line 24
    iget-object v0, v1, Lu/c;->d:Lu/b;

    .line 25
    .line 26
    invoke-interface {v0}, Lu/b;->clear()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, v1, Lu/c;->b:F

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, v1, Lu/c;->e:Z

    .line 34
    .line 35
    :goto_0
    return-object v1
.end method

.method public final m()Lu/i;
    .locals 3

    .line 1
    iget v0, p0, Lu/d;->j:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lu/d;->f:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/d;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lu/d;->a(I)Lu/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lu/d;->c:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lu/d;->c:I

    .line 22
    .line 23
    iget v2, p0, Lu/d;->j:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lu/d;->j:I

    .line 28
    .line 29
    iput v1, v0, Lu/i;->H:I

    .line 30
    .line 31
    iget-object v2, p0, Lu/d;->m:Lm2/o;

    .line 32
    .line 33
    iget-object v2, v2, Lm2/o;->J:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, [Lu/i;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget v0, p0, Lu/d;->e:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lu/d;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lu/c;

    .line 14
    .line 15
    iput-object v0, p0, Lu/d;->g:[Lu/c;

    .line 16
    .line 17
    iget-object v0, p0, Lu/d;->m:Lm2/o;

    .line 18
    .line 19
    iget-object v1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, [Lu/i;

    .line 22
    .line 23
    iget v2, p0, Lu/d;->e:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, [Lu/i;

    .line 30
    .line 31
    iput-object v1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 32
    .line 33
    iget v0, p0, Lu/d;->e:I

    .line 34
    .line 35
    new-array v1, v0, [Z

    .line 36
    .line 37
    iput-object v1, p0, Lu/d;->i:[Z

    .line 38
    .line 39
    iput v0, p0, Lu/d;->f:I

    .line 40
    .line 41
    iput v0, p0, Lu/d;->l:I

    .line 42
    .line 43
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/d;->d:Lu/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/g;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/d;->i()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lu/d;->h:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lu/d;->k:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lu/d;->g:[Lu/c;

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    iget-boolean v2, v2, Lu/c;->e:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lu/d;->q(Lu/g;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lu/d;->i()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p0, v0}, Lu/d;->q(Lu/g;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public final q(Lu/g;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lu/d;->k:I

    .line 5
    .line 6
    if-ge v2, v3, :cond_d

    .line 7
    .line 8
    iget-object v3, v0, Lu/d;->g:[Lu/c;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Lu/c;->a:Lu/i;

    .line 13
    .line 14
    iget v4, v4, Lu/i;->R:I

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v4, v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    iget v3, v3, Lu/c;->b:F

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    cmpg-float v3, v3, v4

    .line 25
    .line 26
    if-gez v3, :cond_c

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_1
    if-nez v2, :cond_d

    .line 31
    .line 32
    add-int/2addr v3, v5

    .line 33
    const/4 v6, -0x1

    .line 34
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, -0x1

    .line 39
    const/4 v10, -0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    :goto_2
    iget v12, v0, Lu/d;->k:I

    .line 42
    .line 43
    if-ge v8, v12, :cond_9

    .line 44
    .line 45
    iget-object v12, v0, Lu/d;->g:[Lu/c;

    .line 46
    .line 47
    aget-object v12, v12, v8

    .line 48
    .line 49
    iget-object v13, v12, Lu/c;->a:Lu/i;

    .line 50
    .line 51
    iget v13, v13, Lu/i;->R:I

    .line 52
    .line 53
    if-ne v13, v5, :cond_1

    .line 54
    .line 55
    goto :goto_6

    .line 56
    :cond_1
    iget-boolean v13, v12, Lu/c;->e:Z

    .line 57
    .line 58
    if-eqz v13, :cond_2

    .line 59
    .line 60
    goto :goto_6

    .line 61
    :cond_2
    iget v13, v12, Lu/c;->b:F

    .line 62
    .line 63
    cmpg-float v13, v13, v4

    .line 64
    .line 65
    if-gez v13, :cond_8

    .line 66
    .line 67
    iget-object v13, v12, Lu/c;->d:Lu/b;

    .line 68
    .line 69
    invoke-interface {v13}, Lu/b;->b()I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    const/4 v14, 0x0

    .line 74
    :goto_3
    if-ge v14, v13, :cond_8

    .line 75
    .line 76
    iget-object v15, v12, Lu/c;->d:Lu/b;

    .line 77
    .line 78
    invoke-interface {v15, v14}, Lu/b;->d(I)Lu/i;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    iget-object v1, v12, Lu/c;->d:Lu/b;

    .line 83
    .line 84
    invoke-interface {v1, v15}, Lu/b;->i(Lu/i;)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    cmpg-float v16, v1, v4

    .line 89
    .line 90
    if-gtz v16, :cond_3

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_3
    const/4 v4, 0x0

    .line 94
    :goto_4
    const/16 v5, 0x9

    .line 95
    .line 96
    if-ge v4, v5, :cond_7

    .line 97
    .line 98
    iget-object v5, v15, Lu/i;->M:[F

    .line 99
    .line 100
    aget v5, v5, v4

    .line 101
    .line 102
    div-float/2addr v5, v1

    .line 103
    cmpg-float v17, v5, v7

    .line 104
    .line 105
    if-gez v17, :cond_4

    .line 106
    .line 107
    if-eq v4, v11, :cond_5

    .line 108
    .line 109
    :cond_4
    if-le v4, v11, :cond_6

    .line 110
    .line 111
    :cond_5
    iget v7, v15, Lu/i;->H:I

    .line 112
    .line 113
    move v11, v4

    .line 114
    move v10, v7

    .line 115
    move v9, v8

    .line 116
    move v7, v5

    .line 117
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v5, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_9
    if-eq v9, v6, :cond_a

    .line 131
    .line 132
    iget-object v1, v0, Lu/d;->g:[Lu/c;

    .line 133
    .line 134
    aget-object v1, v1, v9

    .line 135
    .line 136
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 137
    .line 138
    iput v6, v4, Lu/i;->I:I

    .line 139
    .line 140
    iget-object v4, v0, Lu/d;->m:Lm2/o;

    .line 141
    .line 142
    iget-object v4, v4, Lm2/o;->J:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v4, [Lu/i;

    .line 145
    .line 146
    aget-object v4, v4, v10

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Lu/c;->g(Lu/i;)V

    .line 149
    .line 150
    .line 151
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 152
    .line 153
    iput v9, v4, Lu/i;->I:I

    .line 154
    .line 155
    invoke-virtual {v4, v0, v1}, Lu/i;->e(Lu/d;Lu/c;)V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    const/4 v2, 0x1

    .line 160
    :goto_7
    iget v1, v0, Lu/d;->j:I

    .line 161
    .line 162
    div-int/lit8 v1, v1, 0x2

    .line 163
    .line 164
    if-le v3, v1, :cond_b

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    :cond_b
    const/4 v4, 0x0

    .line 168
    const/4 v5, 0x1

    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lu/d;->r(Lu/c;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lu/d;->i()V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final r(Lu/c;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lu/d;->j:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lu/d;->i:[Z

    .line 8
    .line 9
    aput-boolean v0, v2, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_1
    :goto_1
    if-nez v1, :cond_b

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, p0, Lu/d;->j:I

    .line 21
    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    if-lt v2, v4, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object v4, p1, Lu/c;->a:Lu/i;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    iget-object v5, p0, Lu/d;->i:[Z

    .line 32
    .line 33
    iget v4, v4, Lu/i;->H:I

    .line 34
    .line 35
    aput-boolean v3, v5, v4

    .line 36
    .line 37
    :cond_3
    iget-object v4, p0, Lu/d;->i:[Z

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Lu/c;->d([Z)Lu/i;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    iget-object v5, p0, Lu/d;->i:[Z

    .line 46
    .line 47
    iget v6, v4, Lu/i;->H:I

    .line 48
    .line 49
    aget-boolean v7, v5, v6

    .line 50
    .line 51
    if-eqz v7, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    aput-boolean v3, v5, v6

    .line 55
    .line 56
    :cond_5
    if-eqz v4, :cond_a

    .line 57
    .line 58
    const/4 v5, -0x1

    .line 59
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 60
    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, -0x1

    .line 64
    :goto_2
    iget v9, p0, Lu/d;->k:I

    .line 65
    .line 66
    if-ge v7, v9, :cond_9

    .line 67
    .line 68
    iget-object v9, p0, Lu/d;->g:[Lu/c;

    .line 69
    .line 70
    aget-object v9, v9, v7

    .line 71
    .line 72
    iget-object v10, v9, Lu/c;->a:Lu/i;

    .line 73
    .line 74
    iget v10, v10, Lu/i;->R:I

    .line 75
    .line 76
    if-ne v10, v3, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    iget-boolean v10, v9, Lu/c;->e:Z

    .line 80
    .line 81
    if-eqz v10, :cond_7

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_7
    iget-object v10, v9, Lu/c;->d:Lu/b;

    .line 85
    .line 86
    invoke-interface {v10, v4}, Lu/b;->c(Lu/i;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_8

    .line 91
    .line 92
    iget-object v10, v9, Lu/c;->d:Lu/b;

    .line 93
    .line 94
    invoke-interface {v10, v4}, Lu/b;->i(Lu/i;)F

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    const/4 v11, 0x0

    .line 99
    cmpg-float v11, v10, v11

    .line 100
    .line 101
    if-gez v11, :cond_8

    .line 102
    .line 103
    iget v9, v9, Lu/c;->b:F

    .line 104
    .line 105
    neg-float v9, v9

    .line 106
    div-float/2addr v9, v10

    .line 107
    cmpg-float v10, v9, v6

    .line 108
    .line 109
    if-gez v10, :cond_8

    .line 110
    .line 111
    move v8, v7

    .line 112
    move v6, v9

    .line 113
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_9
    if-le v8, v5, :cond_1

    .line 117
    .line 118
    iget-object v3, p0, Lu/d;->g:[Lu/c;

    .line 119
    .line 120
    aget-object v3, v3, v8

    .line 121
    .line 122
    iget-object v6, v3, Lu/c;->a:Lu/i;

    .line 123
    .line 124
    iput v5, v6, Lu/i;->I:I

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Lu/c;->g(Lu/i;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, v3, Lu/c;->a:Lu/i;

    .line 130
    .line 131
    iput v8, v4, Lu/i;->I:I

    .line 132
    .line 133
    invoke-virtual {v4, p0, v3}, Lu/i;->e(Lu/d;Lu/c;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_a
    const/4 v1, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_b
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lu/d;->k:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lu/d;->m:Lm2/o;

    .line 13
    .line 14
    iget-object v2, v2, Lm2/o;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lu/e;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lu/d;->g:[Lu/c;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lu/d;->m:Lm2/o;

    .line 4
    .line 5
    iget-object v3, v2, Lm2/o;->J:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, [Lu/i;

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    if-ge v1, v4, :cond_1

    .line 11
    .line 12
    aget-object v2, v3, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lu/i;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v2, Lm2/o;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lu/e;

    .line 25
    .line 26
    iget-object v3, p0, Lu/d;->n:[Lu/i;

    .line 27
    .line 28
    iget v4, p0, Lu/d;->o:I

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    array-length v5, v3

    .line 34
    if-le v4, v5, :cond_2

    .line 35
    .line 36
    array-length v4, v3

    .line 37
    :cond_2
    const/4 v5, 0x0

    .line 38
    :goto_1
    if-ge v5, v4, :cond_4

    .line 39
    .line 40
    aget-object v6, v3, v5

    .line 41
    .line 42
    iget v7, v1, Lu/e;->I:I

    .line 43
    .line 44
    iget-object v8, v1, Lu/e;->H:[Ljava/lang/Object;

    .line 45
    .line 46
    array-length v9, v8

    .line 47
    if-ge v7, v9, :cond_3

    .line 48
    .line 49
    aput-object v6, v8, v7

    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    iput v7, v1, Lu/e;->I:I

    .line 54
    .line 55
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iput v0, p0, Lu/d;->o:I

    .line 59
    .line 60
    iget-object v1, v2, Lm2/o;->J:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, [Lu/i;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput v0, p0, Lu/d;->c:I

    .line 69
    .line 70
    iget-object v1, p0, Lu/d;->d:Lu/g;

    .line 71
    .line 72
    iput v0, v1, Lu/g;->h:I

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    iput v3, v1, Lu/c;->b:F

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    iput v1, p0, Lu/d;->j:I

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_2
    iget v3, p0, Lu/d;->k:I

    .line 82
    .line 83
    if-ge v1, v3, :cond_5

    .line 84
    .line 85
    iget-object v3, p0, Lu/d;->g:[Lu/c;

    .line 86
    .line 87
    aget-object v3, v3, v1

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {p0}, Lu/d;->s()V

    .line 93
    .line 94
    .line 95
    iput v0, p0, Lu/d;->k:I

    .line 96
    .line 97
    new-instance v0, Lu/c;

    .line 98
    .line 99
    invoke-direct {v0, v2}, Lu/c;-><init>(Lm2/o;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lu/d;->p:Lu/c;

    .line 103
    .line 104
    return-void
.end method
