.class public final Lo1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LW0/L;

.field public final b:Lo1/r;

.field public final c:Lp0/E;

.field public d:Lo1/s;

.field public e:Lo1/f;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lm0/t;

.field public final k:Lp0/E;

.field public final l:Lp0/E;

.field public m:Z


# direct methods
.method public constructor <init>(LW0/L;Lo1/s;Lo1/f;Lm0/t;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo1/h;->a:LW0/L;

    .line 5
    .line 6
    iput-object p2, p0, Lo1/h;->d:Lo1/s;

    .line 7
    .line 8
    iput-object p3, p0, Lo1/h;->e:Lo1/f;

    .line 9
    .line 10
    iput-object p4, p0, Lo1/h;->j:Lm0/t;

    .line 11
    .line 12
    new-instance v0, Lo1/r;

    .line 13
    .line 14
    invoke-direct {v0}, Lo1/r;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lo1/h;->b:Lo1/r;

    .line 18
    .line 19
    new-instance v0, Lp0/E;

    .line 20
    .line 21
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lo1/h;->c:Lp0/E;

    .line 25
    .line 26
    new-instance v0, Lp0/E;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lo1/h;->k:Lp0/E;

    .line 33
    .line 34
    new-instance v0, Lp0/E;

    .line 35
    .line 36
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lo1/h;->l:Lp0/E;

    .line 40
    .line 41
    iput-object p2, p0, Lo1/h;->d:Lo1/s;

    .line 42
    .line 43
    iput-object p3, p0, Lo1/h;->e:Lo1/f;

    .line 44
    .line 45
    invoke-interface {p1, p4}, LW0/L;->b(Lm0/t;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lo1/h;->e()V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo1/h;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo1/h;->d:Lo1/s;

    .line 6
    .line 7
    iget-object v0, v0, Lo1/s;->g:[I

    .line 8
    .line 9
    iget v1, p0, Lo1/h;->f:I

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lo1/h;->b:Lo1/r;

    .line 15
    .line 16
    iget-object v0, v0, Lo1/r;->j:[Z

    .line 17
    .line 18
    iget v1, p0, Lo1/h;->f:I

    .line 19
    .line 20
    aget-boolean v0, v0, v1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Lo1/h;->b()Lo1/q;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    or-int/2addr v0, v1

    .line 36
    :cond_2
    return v0
.end method

.method public final b()Lo1/q;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo1/h;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lo1/h;->b:Lo1/r;

    .line 8
    .line 9
    iget-object v2, v0, Lo1/r;->a:Lo1/f;

    .line 10
    .line 11
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, v2, Lo1/f;->a:I

    .line 14
    .line 15
    iget-object v0, v0, Lo1/r;->m:Lo1/q;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lo1/h;->d:Lo1/s;

    .line 21
    .line 22
    iget-object v0, v0, Lo1/s;->a:Lo1/p;

    .line 23
    .line 24
    iget-object v0, v0, Lo1/p;->l:[Lo1/q;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    aget-object v0, v0, v2

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v2, v0, Lo1/q;->a:Z

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    :cond_3
    return-object v1
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget v0, p0, Lo1/h;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lo1/h;->f:I

    .line 6
    .line 7
    iget-boolean v0, p0, Lo1/h;->m:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, Lo1/h;->g:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lo1/h;->g:I

    .line 17
    .line 18
    iget-object v3, p0, Lo1/h;->b:Lo1/r;

    .line 19
    .line 20
    iget-object v3, v3, Lo1/r;->g:[I

    .line 21
    .line 22
    iget v4, p0, Lo1/h;->h:I

    .line 23
    .line 24
    aget v3, v3, v4

    .line 25
    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    add-int/2addr v4, v1

    .line 29
    iput v4, p0, Lo1/h;->h:I

    .line 30
    .line 31
    iput v2, p0, Lo1/h;->g:I

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v1
.end method

.method public final d(II)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lo1/h;->b()Lo1/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lo1/h;->b:Lo1/r;

    .line 10
    .line 11
    iget v3, v0, Lo1/q;->d:I

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v0, v2, Lo1/r;->n:Lp0/E;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Lo1/q;->e:[B

    .line 21
    .line 22
    array-length v3, v0

    .line 23
    iget-object v4, p0, Lo1/h;->l:Lp0/E;

    .line 24
    .line 25
    invoke-virtual {v4, v3, v0}, Lp0/E;->J(I[B)V

    .line 26
    .line 27
    .line 28
    array-length v3, v0

    .line 29
    move-object v0, v4

    .line 30
    :goto_0
    iget v4, p0, Lo1/h;->f:I

    .line 31
    .line 32
    iget-boolean v5, v2, Lo1/r;->k:Z

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    iget-object v5, v2, Lo1/r;->l:[Z

    .line 38
    .line 39
    aget-boolean v4, v5, v4

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-nez v4, :cond_4

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v5, 0x0

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 54
    :goto_3
    iget-object v7, p0, Lo1/h;->k:Lp0/E;

    .line 55
    .line 56
    iget-object v8, v7, Lp0/E;->a:[B

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    const/16 v9, 0x80

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    const/4 v9, 0x0

    .line 64
    :goto_4
    or-int/2addr v9, v3

    .line 65
    int-to-byte v9, v9

    .line 66
    aput-byte v9, v8, v1

    .line 67
    .line 68
    invoke-virtual {v7, v1}, Lp0/E;->L(I)V

    .line 69
    .line 70
    .line 71
    iget-object v8, p0, Lo1/h;->a:LW0/L;

    .line 72
    .line 73
    invoke-interface {v8, v6, v6, v7}, LW0/L;->a(IILp0/E;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v8, v3, v6, v0}, LW0/L;->a(IILp0/E;)V

    .line 77
    .line 78
    .line 79
    if-nez v5, :cond_6

    .line 80
    .line 81
    add-int/2addr v3, v6

    .line 82
    return v3

    .line 83
    :cond_6
    const/16 v0, 0x8

    .line 84
    .line 85
    const/4 v5, 0x6

    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v9, 0x2

    .line 88
    iget-object v10, p0, Lo1/h;->c:Lp0/E;

    .line 89
    .line 90
    if-nez v4, :cond_7

    .line 91
    .line 92
    invoke-virtual {v10, v0}, Lp0/E;->I(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v10, Lp0/E;->a:[B

    .line 96
    .line 97
    aput-byte v1, v2, v1

    .line 98
    .line 99
    aput-byte v6, v2, v6

    .line 100
    .line 101
    int-to-byte v1, v1

    .line 102
    aput-byte v1, v2, v9

    .line 103
    .line 104
    and-int/lit16 p2, p2, 0xff

    .line 105
    .line 106
    int-to-byte p2, p2

    .line 107
    aput-byte p2, v2, v7

    .line 108
    .line 109
    shr-int/lit8 p2, p1, 0x18

    .line 110
    .line 111
    and-int/lit16 p2, p2, 0xff

    .line 112
    .line 113
    int-to-byte p2, p2

    .line 114
    const/4 v1, 0x4

    .line 115
    aput-byte p2, v2, v1

    .line 116
    .line 117
    shr-int/lit8 p2, p1, 0x10

    .line 118
    .line 119
    and-int/lit16 p2, p2, 0xff

    .line 120
    .line 121
    int-to-byte p2, p2

    .line 122
    const/4 v1, 0x5

    .line 123
    aput-byte p2, v2, v1

    .line 124
    .line 125
    shr-int/lit8 p2, p1, 0x8

    .line 126
    .line 127
    and-int/lit16 p2, p2, 0xff

    .line 128
    .line 129
    int-to-byte p2, p2

    .line 130
    aput-byte p2, v2, v5

    .line 131
    .line 132
    and-int/lit16 p1, p1, 0xff

    .line 133
    .line 134
    int-to-byte p1, p1

    .line 135
    const/4 p2, 0x7

    .line 136
    aput-byte p1, v2, p2

    .line 137
    .line 138
    invoke-interface {v8, v0, v6, v10}, LW0/L;->a(IILp0/E;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x9

    .line 142
    .line 143
    return v3

    .line 144
    :cond_7
    iget-object p1, v2, Lo1/r;->n:Lp0/E;

    .line 145
    .line 146
    invoke-virtual {p1}, Lp0/E;->F()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v4, -0x2

    .line 151
    invoke-virtual {p1, v4}, Lp0/E;->M(I)V

    .line 152
    .line 153
    .line 154
    mul-int/lit8 v2, v2, 0x6

    .line 155
    .line 156
    add-int/2addr v2, v9

    .line 157
    if-eqz p2, :cond_8

    .line 158
    .line 159
    invoke-virtual {v10, v2}, Lp0/E;->I(I)V

    .line 160
    .line 161
    .line 162
    iget-object v4, v10, Lp0/E;->a:[B

    .line 163
    .line 164
    invoke-virtual {p1, v1, v4, v2}, Lp0/E;->j(I[BI)V

    .line 165
    .line 166
    .line 167
    aget-byte p1, v4, v9

    .line 168
    .line 169
    and-int/lit16 p1, p1, 0xff

    .line 170
    .line 171
    shl-int/2addr p1, v0

    .line 172
    aget-byte v0, v4, v7

    .line 173
    .line 174
    and-int/lit16 v0, v0, 0xff

    .line 175
    .line 176
    or-int/2addr p1, v0

    .line 177
    add-int/2addr p1, p2

    .line 178
    shr-int/lit8 p2, p1, 0x8

    .line 179
    .line 180
    and-int/lit16 p2, p2, 0xff

    .line 181
    .line 182
    int-to-byte p2, p2

    .line 183
    aput-byte p2, v4, v9

    .line 184
    .line 185
    and-int/lit16 p1, p1, 0xff

    .line 186
    .line 187
    int-to-byte p1, p1

    .line 188
    aput-byte p1, v4, v7

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    move-object v10, p1

    .line 192
    :goto_5
    invoke-interface {v8, v2, v6, v10}, LW0/L;->a(IILp0/E;)V

    .line 193
    .line 194
    .line 195
    add-int/2addr v3, v6

    .line 196
    add-int/2addr v3, v2

    .line 197
    return v3
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo1/h;->b:Lo1/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lo1/r;->d:I

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    iput-wide v2, v0, Lo1/r;->p:J

    .line 9
    .line 10
    iput-boolean v1, v0, Lo1/r;->q:Z

    .line 11
    .line 12
    iput-boolean v1, v0, Lo1/r;->k:Z

    .line 13
    .line 14
    iput-boolean v1, v0, Lo1/r;->o:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v0, Lo1/r;->m:Lo1/q;

    .line 18
    .line 19
    iput v1, p0, Lo1/h;->f:I

    .line 20
    .line 21
    iput v1, p0, Lo1/h;->h:I

    .line 22
    .line 23
    iput v1, p0, Lo1/h;->g:I

    .line 24
    .line 25
    iput v1, p0, Lo1/h;->i:I

    .line 26
    .line 27
    iput-boolean v1, p0, Lo1/h;->m:Z

    .line 28
    .line 29
    return-void
.end method
