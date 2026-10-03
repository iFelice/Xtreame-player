.class public final Lc1/e;
.super Lc1/d;
.source "SourceFile"


# instance fields
.field public final H:Lp0/E;

.field public final I:Lp0/E;

.field public J:I

.field public K:Z

.field public L:Z

.field public M:I


# direct methods
.method public constructor <init>(LW0/L;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc1/d;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lp0/E;

    .line 5
    .line 6
    sget-object v0, Lq0/p;->a:[B

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lp0/E;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lc1/e;->H:Lp0/E;

    .line 12
    .line 13
    new-instance p1, Lp0/E;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p1, v0}, Lp0/E;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lc1/e;->I:Lp0/E;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final n(Lp0/E;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    shr-int/lit8 v0, p1, 0x4

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xf

    .line 8
    .line 9
    and-int/lit8 p1, p1, 0xf

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    iput v0, p0, Lc1/e;->M:I

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    :cond_1
    new-instance v0, LO0/a0;

    .line 24
    .line 25
    const-string v1, "Video format not supported: "

    .line 26
    .line 27
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, LO0/a0;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final o(JLp0/E;)Z
    .locals 10

    .line 1
    invoke-virtual {p3}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p3, Lp0/E;->a:[B

    .line 6
    .line 7
    iget v2, p3, Lp0/E;->b:I

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    aget-byte v4, v1, v2

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xff

    .line 14
    .line 15
    shl-int/lit8 v4, v4, 0x18

    .line 16
    .line 17
    shr-int/lit8 v4, v4, 0x8

    .line 18
    .line 19
    add-int/lit8 v5, v2, 0x2

    .line 20
    .line 21
    aget-byte v3, v1, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    shl-int/lit8 v3, v3, 0x8

    .line 26
    .line 27
    or-int/2addr v3, v4

    .line 28
    add-int/lit8 v2, v2, 0x3

    .line 29
    .line 30
    iput v2, p3, Lp0/E;->b:I

    .line 31
    .line 32
    aget-byte v1, v1, v5

    .line 33
    .line 34
    and-int/lit16 v1, v1, 0xff

    .line 35
    .line 36
    or-int/2addr v1, v3

    .line 37
    int-to-long v1, v1

    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    mul-long v1, v1, v3

    .line 41
    .line 42
    add-long v4, v1, p1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    const/4 p2, 0x0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    iget-boolean v1, p0, Lc1/e;->K:Z

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v0, Lp0/E;

    .line 53
    .line 54
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lp0/E;-><init>([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p3, p2, v1, v2}, Lp0/E;->j(I[BI)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, LW0/e;->a(Lp0/E;)LW0/e;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    iget v0, p3, LW0/e;->b:I

    .line 75
    .line 76
    iput v0, p0, Lc1/e;->J:I

    .line 77
    .line 78
    new-instance v0, Lm0/s;

    .line 79
    .line 80
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "video/x-flv"

    .line 84
    .line 85
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Lm0/s;->m:Ljava/lang/String;

    .line 90
    .line 91
    const-string v1, "video/avc"

    .line 92
    .line 93
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, p3, LW0/e;->l:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, v0, Lm0/s;->j:Ljava/lang/String;

    .line 102
    .line 103
    iget v1, p3, LW0/e;->c:I

    .line 104
    .line 105
    iput v1, v0, Lm0/s;->u:I

    .line 106
    .line 107
    iget v1, p3, LW0/e;->d:I

    .line 108
    .line 109
    iput v1, v0, Lm0/s;->v:I

    .line 110
    .line 111
    iget v1, p3, LW0/e;->k:F

    .line 112
    .line 113
    iput v1, v0, Lm0/s;->A:F

    .line 114
    .line 115
    iget-object p3, p3, LW0/e;->a:Ljava/util/List;

    .line 116
    .line 117
    iput-object p3, v0, Lm0/s;->q:Ljava/util/List;

    .line 118
    .line 119
    new-instance p3, Lm0/t;

    .line 120
    .line 121
    invoke-direct {p3, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, LW0/L;

    .line 127
    .line 128
    invoke-interface {v0, p3}, LW0/L;->b(Lm0/t;)V

    .line 129
    .line 130
    .line 131
    iput-boolean p1, p0, Lc1/e;->K:Z

    .line 132
    .line 133
    return p2

    .line 134
    :cond_0
    if-ne v0, p1, :cond_4

    .line 135
    .line 136
    iget-boolean v0, p0, Lc1/e;->K:Z

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget v0, p0, Lc1/e;->M:I

    .line 141
    .line 142
    if-ne v0, p1, :cond_1

    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    const/4 v6, 0x0

    .line 147
    :goto_0
    iget-boolean v0, p0, Lc1/e;->L:Z

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    if-nez v6, :cond_2

    .line 152
    .line 153
    return p2

    .line 154
    :cond_2
    iget-object v0, p0, Lc1/e;->I:Lp0/E;

    .line 155
    .line 156
    iget-object v1, v0, Lp0/E;->a:[B

    .line 157
    .line 158
    aput-byte p2, v1, p2

    .line 159
    .line 160
    aput-byte p2, v1, p1

    .line 161
    .line 162
    const/4 v2, 0x2

    .line 163
    aput-byte p2, v1, v2

    .line 164
    .line 165
    iget v1, p0, Lc1/e;->J:I

    .line 166
    .line 167
    const/4 v2, 0x4

    .line 168
    rsub-int/lit8 v1, v1, 0x4

    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    :goto_1
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-lez v3, :cond_3

    .line 176
    .line 177
    iget-object v3, v0, Lp0/E;->a:[B

    .line 178
    .line 179
    iget v8, p0, Lc1/e;->J:I

    .line 180
    .line 181
    invoke-virtual {p3, v1, v3, v8}, Lp0/E;->j(I[BI)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p2}, Lp0/E;->L(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lp0/E;->D()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iget-object v8, p0, Lc1/e;->H:Lp0/E;

    .line 192
    .line 193
    invoke-virtual {v8, p2}, Lp0/E;->L(I)V

    .line 194
    .line 195
    .line 196
    iget-object v9, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v9, LW0/L;

    .line 199
    .line 200
    invoke-interface {v9, v2, v8}, LW0/L;->e(ILp0/E;)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v7, v7, 0x4

    .line 204
    .line 205
    iget-object v8, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v8, LW0/L;

    .line 208
    .line 209
    invoke-interface {v8, v3, p3}, LW0/L;->e(ILp0/E;)V

    .line 210
    .line 211
    .line 212
    add-int/2addr v7, v3

    .line 213
    goto :goto_1

    .line 214
    :cond_3
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v3, p2

    .line 217
    check-cast v3, LW0/L;

    .line 218
    .line 219
    const/4 v8, 0x0

    .line 220
    const/4 v9, 0x0

    .line 221
    invoke-interface/range {v3 .. v9}, LW0/L;->d(JIIILW0/K;)V

    .line 222
    .line 223
    .line 224
    iput-boolean p1, p0, Lc1/e;->L:Z

    .line 225
    .line 226
    return p1

    .line 227
    :cond_4
    return p2
.end method
