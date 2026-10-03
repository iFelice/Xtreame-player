.class public final LW0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m;


# instance fields
.field public final G:Lp0/E;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lp0/E;

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lp0/E;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LW0/C;->G:Lp0/E;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lp0/E;

    .line 21
    .line 22
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, LW0/C;->G:Lp0/E;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    add-int v1, v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, LW0/C;->G:Lp0/E;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4}, Lp0/E;->J(I[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Lp0/E;->L(I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_8

    .line 27
    .line 28
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_1
    const-string v7, "Incomplete Mp4Webvtt Top Level box header found."

    .line 42
    .line 43
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const v8, 0x76747463

    .line 55
    .line 56
    .line 57
    if-ne v7, v8, :cond_7

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x8

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v8, v7

    .line 63
    move-object v9, v8

    .line 64
    :cond_1
    :goto_2
    if-lez v0, :cond_4

    .line 65
    .line 66
    if-lt v0, v1, :cond_2

    .line 67
    .line 68
    const/4 v10, 0x1

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    const/4 v10, 0x0

    .line 71
    :goto_3
    const-string v11, "Incomplete vtt cue box header found."

    .line 72
    .line 73
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    add-int/lit8 v0, v0, -0x8

    .line 85
    .line 86
    sub-int/2addr v10, v1

    .line 87
    iget-object v12, v3, Lp0/E;->a:[B

    .line 88
    .line 89
    iget v13, v3, Lp0/E;->b:I

    .line 90
    .line 91
    sget-object v14, Lp0/M;->a:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v14, Ljava/lang/String;

    .line 94
    .line 95
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-direct {v14, v12, v13, v10, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v10}, Lp0/E;->M(I)V

    .line 101
    .line 102
    .line 103
    sub-int/2addr v0, v10

    .line 104
    const v10, 0x73747467

    .line 105
    .line 106
    .line 107
    if-ne v11, v10, :cond_3

    .line 108
    .line 109
    new-instance v9, Lz1/g;

    .line 110
    .line 111
    invoke-direct {v9}, Lz1/g;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v14, v9}, Lz1/h;->e(Ljava/lang/String;Lz1/g;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Lz1/g;->a()Lo0/a;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    const v10, 0x7061796c

    .line 123
    .line 124
    .line 125
    if-ne v11, v10, :cond_1

    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-static {v7, v8, v10}, Lz1/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    if-nez v8, :cond_5

    .line 141
    .line 142
    const-string v8, ""

    .line 143
    .line 144
    :cond_5
    if-eqz v9, :cond_6

    .line 145
    .line 146
    iput-object v8, v9, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 147
    .line 148
    iput-object v7, v9, Lo0/a;->b:Landroid/graphics/Bitmap;

    .line 149
    .line 150
    invoke-virtual {v9}, Lo0/a;->a()Lo0/b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    sget-object v0, Lz1/h;->a:Ljava/util/regex/Pattern;

    .line 156
    .line 157
    new-instance v0, Lz1/g;

    .line 158
    .line 159
    invoke-direct {v0}, Lz1/g;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v8, v0, Lz1/g;->c:Ljava/lang/CharSequence;

    .line 163
    .line 164
    invoke-virtual {v0}, Lz1/g;->a()Lo0/a;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lo0/a;->a()Lo0/b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_4
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_7
    add-int/lit8 v0, v0, -0x8

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Lp0/E;->M(I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    new-instance v0, Lq1/a;

    .line 185
    .line 186
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    move-object v4, v0

    .line 197
    invoke-direct/range {v4 .. v9}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 198
    .line 199
    .line 200
    move-object/from16 v1, p5

    .line 201
    .line 202
    invoke-interface {v1, v0}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final synthetic c(I[BI)Lq1/d;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/google/protobuf/U2;->b(Lq1/m;[BII)Lq1/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(LW0/t;LN/i;)Lm0/N;
    .locals 8

    .line 1
    iget-object v0, p0, LW0/C;->G:Lp0/E;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    :try_start_0
    iget-object v4, v0, Lp0/E;->a:[B

    .line 7
    .line 8
    const/16 v5, 0xa

    .line 9
    .line 10
    invoke-interface {p1, v1, v4, v5}, LW0/t;->c(I[BI)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lp0/E;->L(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lp0/E;->C()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const v6, 0x494433

    .line 21
    .line 22
    .line 23
    if-eq v4, v6, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const/4 v4, 0x3

    .line 27
    invoke-virtual {v0, v4}, Lp0/E;->M(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lp0/E;->y()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/lit8 v6, v4, 0xa

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-array v2, v6, [B

    .line 39
    .line 40
    iget-object v7, v0, Lp0/E;->a:[B

    .line 41
    .line 42
    invoke-static {v7, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v5, v2, v4}, LW0/t;->c(I[BI)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Li1/i;

    .line 49
    .line 50
    invoke-direct {v4, p2}, Li1/i;-><init>(LN/i;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v6, v2}, Li1/i;->u(I[B)Lm0/N;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {p1, v4}, LW0/t;->g(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/2addr v3, v6

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    :goto_2
    invoke-interface {p1}, LW0/t;->m()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v3}, LW0/t;->g(I)V

    .line 67
    .line 68
    .line 69
    return-object v2
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
