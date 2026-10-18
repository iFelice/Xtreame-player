.class public final LA1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, LA1/i;->a:I

    .line 9
    const-string v0, "video/mp2t"

    iput-object v0, p0, LA1/i;->b:Ljava/lang/String;

    .line 10
    new-instance v0, Lp0/E;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    iput-object v0, p0, LA1/i;->g:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, LA1/i;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/i;->a:I

    .line 3
    iput-object p1, p0, LA1/i;->g:Ljava/lang/Object;

    .line 4
    const-string v0, "video/mp2t"

    iput-object v0, p0, LA1/i;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [LW0/L;

    iput-object p1, p0, LA1/i;->h:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, LA1/i;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, LA1/i;->a:I

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iput-boolean v3, p0, LA1/i;->c:Z

    .line 13
    .line 14
    iput-wide v1, p0, LA1/i;->d:J

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-boolean v3, p0, LA1/i;->c:Z

    .line 18
    .line 19
    iput-wide v1, p0, LA1/i;->d:J

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lp0/E;)V
    .locals 8

    .line 1
    iget v0, p0, LA1/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LA1/i;->h:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LW0/L;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, LA1/i;->c:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, LA1/i;->f:I

    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    if-ge v2, v3, :cond_3

    .line 29
    .line 30
    rsub-int/lit8 v2, v2, 0xa

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v4, p1, Lp0/E;->a:[B

    .line 37
    .line 38
    iget v5, p1, Lp0/E;->b:I

    .line 39
    .line 40
    iget-object v6, p0, LA1/i;->g:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v6, Lp0/E;

    .line 43
    .line 44
    iget-object v6, v6, Lp0/E;->a:[B

    .line 45
    .line 46
    iget v7, p0, LA1/i;->f:I

    .line 47
    .line 48
    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iget v4, p0, LA1/i;->f:I

    .line 52
    .line 53
    add-int/2addr v4, v2

    .line 54
    if-ne v4, v3, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, LA1/i;->g:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lp0/E;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Lp0/E;->L(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, LA1/i;->g:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lp0/E;

    .line 66
    .line 67
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/16 v4, 0x49

    .line 72
    .line 73
    if-ne v4, v2, :cond_2

    .line 74
    .line 75
    iget-object v2, p0, LA1/i;->g:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lp0/E;

    .line 78
    .line 79
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/16 v4, 0x44

    .line 84
    .line 85
    if-ne v4, v2, :cond_2

    .line 86
    .line 87
    iget-object v2, p0, LA1/i;->g:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Lp0/E;

    .line 90
    .line 91
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/16 v4, 0x33

    .line 96
    .line 97
    if-eq v4, v2, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, LA1/i;->g:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lp0/E;

    .line 103
    .line 104
    const/4 v2, 0x3

    .line 105
    invoke-virtual {v1, v2}, Lp0/E;->M(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, LA1/i;->g:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lp0/E;

    .line 111
    .line 112
    invoke-virtual {v1}, Lp0/E;->y()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v3

    .line 117
    iput v1, p0, LA1/i;->e:I

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    .line 121
    .line 122
    const-string v0, "Discarding invalid ID3 tag"

    .line 123
    .line 124
    invoke-static {p1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-boolean v1, p0, LA1/i;->c:Z

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_1
    iget v1, p0, LA1/i;->e:I

    .line 131
    .line 132
    iget v2, p0, LA1/i;->f:I

    .line 133
    .line 134
    sub-int/2addr v1, v2

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iget-object v1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, LW0/L;

    .line 142
    .line 143
    invoke-interface {v1, v0, p1}, LW0/L;->e(ILp0/E;)V

    .line 144
    .line 145
    .line 146
    iget p1, p0, LA1/i;->f:I

    .line 147
    .line 148
    add-int/2addr p1, v0

    .line 149
    iput p1, p0, LA1/i;->f:I

    .line 150
    .line 151
    :goto_2
    return-void

    .line 152
    :pswitch_0
    iget-boolean v0, p0, LA1/i;->c:Z

    .line 153
    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    iget v0, p0, LA1/i;->e:I

    .line 157
    .line 158
    const/4 v2, 0x2

    .line 159
    const/4 v3, 0x1

    .line 160
    if-ne v0, v2, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_4
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    const/16 v2, 0x20

    .line 174
    .line 175
    if-eq v0, v2, :cond_5

    .line 176
    .line 177
    iput-boolean v1, p0, LA1/i;->c:Z

    .line 178
    .line 179
    :cond_5
    iget v0, p0, LA1/i;->e:I

    .line 180
    .line 181
    sub-int/2addr v0, v3

    .line 182
    iput v0, p0, LA1/i;->e:I

    .line 183
    .line 184
    iget-boolean v0, p0, LA1/i;->c:Z

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    iget v0, p0, LA1/i;->e:I

    .line 190
    .line 191
    if-ne v0, v3, :cond_9

    .line 192
    .line 193
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_7

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    iput-boolean v1, p0, LA1/i;->c:Z

    .line 207
    .line 208
    :cond_8
    iget v0, p0, LA1/i;->e:I

    .line 209
    .line 210
    sub-int/2addr v0, v3

    .line 211
    iput v0, p0, LA1/i;->e:I

    .line 212
    .line 213
    iget-boolean v0, p0, LA1/i;->c:Z

    .line 214
    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_9
    iget v0, p1, Lp0/E;->b:I

    .line 219
    .line 220
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iget-object v3, p0, LA1/i;->h:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v3, [LW0/L;

    .line 227
    .line 228
    array-length v4, v3

    .line 229
    :goto_3
    if-ge v1, v4, :cond_a

    .line 230
    .line 231
    aget-object v5, v3, v1

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lp0/E;->L(I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v5, v2, p1}, LW0/L;->e(ILp0/E;)V

    .line 237
    .line 238
    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_a
    iget p1, p0, LA1/i;->f:I

    .line 243
    .line 244
    add-int/2addr p1, v2

    .line 245
    iput p1, p0, LA1/i;->f:I

    .line 246
    .line 247
    :cond_b
    :goto_4
    return-void

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 5

    .line 1
    iget v0, p0, LA1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, LA1/I;->a()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, LA1/I;->b()V

    .line 10
    .line 11
    .line 12
    iget v0, p2, LA1/I;->d:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Lm0/s;

    .line 22
    .line 23
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, LA1/I;->b()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p2, LA1/I;->e:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, v0, Lm0/s;->a:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p2, p0, LA1/i;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, v0, Lm0/s;->m:Ljava/lang/String;

    .line 40
    .line 41
    const-string p2, "application/id3"

    .line 42
    .line 43
    invoke-static {p2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, v0, Lm0/s;->n:Ljava/lang/String;

    .line 48
    .line 49
    new-instance p2, Lm0/t;

    .line 50
    .line 51
    invoke-direct {p2, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, LW0/L;->b(Lm0/t;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, [LW0/L;

    .line 62
    .line 63
    array-length v1, v1

    .line 64
    if-ge v0, v1, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, LA1/i;->g:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, LA1/G;

    .line 75
    .line 76
    invoke-virtual {p2}, LA1/I;->a()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, LA1/I;->b()V

    .line 80
    .line 81
    .line 82
    iget v2, p2, LA1/I;->d:I

    .line 83
    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-interface {p1, v2, v3}, LW0/u;->t(II)LW0/L;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, Lm0/s;

    .line 90
    .line 91
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, LA1/I;->b()V

    .line 95
    .line 96
    .line 97
    iget-object v4, p2, LA1/I;->e:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v4, v3, Lm0/s;->a:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, p0, LA1/i;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iput-object v4, v3, Lm0/s;->m:Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "application/dvbsubs"

    .line 110
    .line 111
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iput-object v4, v3, Lm0/s;->n:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v4, v1, LA1/G;->b:[B

    .line 118
    .line 119
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iput-object v4, v3, Lm0/s;->q:Ljava/util/List;

    .line 124
    .line 125
    iget-object v1, v1, LA1/G;->a:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v1, v3, Lm0/s;->d:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v1, Lm0/t;

    .line 130
    .line 131
    invoke-direct {v1, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v1}, LW0/L;->b(Lm0/t;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, [LW0/L;

    .line 140
    .line 141
    aput-object v2, v1, v0

    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 10

    .line 1
    iget p1, p0, LA1/i;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, LW0/L;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, LA1/i;->c:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget p1, p0, LA1/i;->e:I

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget v4, p0, LA1/i;->f:I

    .line 29
    .line 30
    if-eq v4, p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-wide v4, p0, LA1/i;->d:J

    .line 34
    .line 35
    cmp-long p1, v4, v1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    check-cast v1, LW0/L;

    .line 48
    .line 49
    iget-wide v2, p0, LA1/i;->d:J

    .line 50
    .line 51
    iget v5, p0, LA1/i;->e:I

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-interface/range {v1 .. v7}, LW0/L;->d(JIIILW0/K;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v0, p0, LA1/i;->c:Z

    .line 60
    .line 61
    :cond_2
    :goto_1
    return-void

    .line 62
    :pswitch_0
    iget-boolean p1, p0, LA1/i;->c:Z

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-wide v4, p0, LA1/i;->d:J

    .line 67
    .line 68
    cmp-long p1, v4, v1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, LA1/i;->h:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, [LW0/L;

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_3
    if-ge v2, v1, :cond_4

    .line 84
    .line 85
    aget-object v3, p1, v2

    .line 86
    .line 87
    iget-wide v4, p0, LA1/i;->d:J

    .line 88
    .line 89
    iget v7, p0, LA1/i;->f:I

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    invoke-interface/range {v3 .. v9}, LW0/L;->d(JIIILW0/K;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    iput-boolean v0, p0, LA1/i;->c:Z

    .line 101
    .line 102
    :cond_5
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(IJ)V
    .locals 3

    .line 1
    iget v0, p0, LA1/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v2, p0, LA1/i;->c:Z

    .line 14
    .line 15
    iput-wide p2, p0, LA1/i;->d:J

    .line 16
    .line 17
    iput v1, p0, LA1/i;->e:I

    .line 18
    .line 19
    iput v1, p0, LA1/i;->f:I

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput-boolean v2, p0, LA1/i;->c:Z

    .line 28
    .line 29
    iput-wide p2, p0, LA1/i;->d:J

    .line 30
    .line 31
    iput v1, p0, LA1/i;->f:I

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    iput p1, p0, LA1/i;->e:I

    .line 35
    .line 36
    :goto_1
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
