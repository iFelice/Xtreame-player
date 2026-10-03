.class public final LA5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/k;


# static fields
.field public static final b:[Lq5/o;


# instance fields
.field public final a:Lz5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lq5/o;

    .line 3
    .line 4
    sput-object v0, LA5/a;->b:[Lq5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz5/c;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lz5/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LA5/a;->a:Lz5/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, LA5/a;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Lm2/l;->i()Lw5/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lw5/b;->G:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget v4, v0, Lw5/b;->H:I

    .line 10
    .line 11
    move v7, v4

    .line 12
    const/4 v5, -0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v6, v4, :cond_7

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    :goto_1
    iget v9, v0, Lw5/b;->I:I

    .line 18
    .line 19
    if-ge v8, v9, :cond_6

    .line 20
    .line 21
    mul-int v9, v9, v6

    .line 22
    .line 23
    add-int/2addr v9, v8

    .line 24
    iget-object v10, v0, Lw5/b;->J:[I

    .line 25
    .line 26
    aget v9, v10, v9

    .line 27
    .line 28
    if-eqz v9, :cond_5

    .line 29
    .line 30
    if-ge v6, v7, :cond_0

    .line 31
    .line 32
    move v7, v6

    .line 33
    :cond_0
    if-le v6, v5, :cond_1

    .line 34
    .line 35
    move v5, v6

    .line 36
    :cond_1
    shl-int/lit8 v10, v8, 0x5

    .line 37
    .line 38
    if-ge v10, v1, :cond_3

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    :goto_2
    rsub-int/lit8 v12, v11, 0x1f

    .line 42
    .line 43
    shl-int v12, v9, v12

    .line 44
    .line 45
    if-nez v12, :cond_2

    .line 46
    .line 47
    add-int/lit8 v11, v11, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    add-int/2addr v11, v10

    .line 51
    if-ge v11, v1, :cond_3

    .line 52
    .line 53
    move v1, v11

    .line 54
    :cond_3
    add-int/lit8 v11, v10, 0x1f

    .line 55
    .line 56
    if-le v11, v2, :cond_5

    .line 57
    .line 58
    const/16 v11, 0x1f

    .line 59
    .line 60
    :goto_3
    ushr-int v12, v9, v11

    .line 61
    .line 62
    if-nez v12, :cond_4

    .line 63
    .line 64
    add-int/lit8 v11, v11, -0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    add-int/2addr v10, v11

    .line 68
    if-le v10, v2, :cond_5

    .line 69
    .line 70
    move v2, v10

    .line 71
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    const/4 v4, 0x1

    .line 78
    if-lt v2, v1, :cond_9

    .line 79
    .line 80
    if-ge v5, v7, :cond_8

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_8
    sub-int/2addr v2, v1

    .line 84
    add-int/2addr v2, v4

    .line 85
    sub-int/2addr v5, v7

    .line 86
    add-int/2addr v5, v4

    .line 87
    filled-new-array {v1, v7, v2, v5}, [I

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_5

    .line 92
    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 93
    :goto_5
    if-eqz v1, :cond_e

    .line 94
    .line 95
    aget v2, v1, v3

    .line 96
    .line 97
    aget v4, v1, v4

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    aget v6, v1, v5

    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    aget v1, v1, v7

    .line 104
    .line 105
    new-instance v7, Lw5/b;

    .line 106
    .line 107
    const/16 v8, 0x1e

    .line 108
    .line 109
    const/16 v9, 0x21

    .line 110
    .line 111
    invoke-direct {v7, v8, v9}, Lw5/b;-><init>(II)V

    .line 112
    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    :goto_6
    if-ge v10, v9, :cond_c

    .line 116
    .line 117
    mul-int v11, v10, v1

    .line 118
    .line 119
    div-int/lit8 v12, v1, 0x2

    .line 120
    .line 121
    add-int/2addr v12, v11

    .line 122
    div-int/2addr v12, v9

    .line 123
    add-int/2addr v12, v4

    .line 124
    const/4 v11, 0x0

    .line 125
    :goto_7
    if-ge v11, v8, :cond_b

    .line 126
    .line 127
    mul-int v13, v11, v6

    .line 128
    .line 129
    div-int/lit8 v14, v6, 0x2

    .line 130
    .line 131
    add-int/2addr v14, v13

    .line 132
    and-int/lit8 v13, v10, 0x1

    .line 133
    .line 134
    mul-int v13, v13, v6

    .line 135
    .line 136
    div-int/2addr v13, v5

    .line 137
    add-int/2addr v13, v14

    .line 138
    div-int/2addr v13, v8

    .line 139
    add-int/2addr v13, v2

    .line 140
    invoke-virtual {v0, v13, v12}, Lw5/b;->b(II)Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_a

    .line 145
    .line 146
    invoke-virtual {v7, v11, v10}, Lw5/b;->f(II)V

    .line 147
    .line 148
    .line 149
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_c
    move-object v10, p0

    .line 156
    iget-object v0, v10, LA5/a;->a:Lz5/c;

    .line 157
    .line 158
    move-object/from16 v1, p2

    .line 159
    .line 160
    invoke-virtual {v0, v7, v1}, Lz5/c;->e(Lw5/b;Ljava/util/Map;)Lw5/d;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lq5/m;

    .line 165
    .line 166
    sget-object v2, LA5/a;->b:[Lq5/o;

    .line 167
    .line 168
    sget-object v3, Lq5/a;->P:Lq5/a;

    .line 169
    .line 170
    iget-object v4, v0, Lw5/d;->b:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v5, v0, Lw5/d;->a:[B

    .line 173
    .line 174
    invoke-direct {v1, v4, v5, v2, v3}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, Lw5/d;->d:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    sget-object v2, Lq5/n;->I:Lq5/n;

    .line 182
    .line 183
    invoke-virtual {v1, v2, v0}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_d
    return-object v1

    .line 187
    :cond_e
    move-object v10, p0

    .line 188
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 189
    .line 190
    throw v0
.end method
