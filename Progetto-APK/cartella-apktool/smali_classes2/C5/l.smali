.class public final LC5/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:Lm2/l;

.field public final b:LC5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    filled-new-array {v0, v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LC5/l;->c:[I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm2/l;

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lm2/l;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LC5/l;->a:Lm2/l;

    .line 12
    .line 13
    new-instance v0, LC5/k;

    .line 14
    .line 15
    invoke-direct {v0}, LC5/k;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LC5/l;->b:LC5/k;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(IILw5/a;)Lq5/m;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, LC5/l;->c:[I

    .line 13
    .line 14
    const/4 v8, 0x3

    .line 15
    new-array v9, v8, [I

    .line 16
    .line 17
    move/from16 v10, p2

    .line 18
    .line 19
    invoke-static {v2, v10, v5, v7, v9}, LC5/m;->n(Lw5/a;IZ[I[I)[I

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    :try_start_0
    iget-object v9, v0, LC5/l;->b:LC5/k;

    .line 24
    .line 25
    invoke-virtual {v9, v1, v2, v7}, LC5/k;->a(ILw5/a;[I)Lq5/m;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catch Lq5/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v1

    .line 30
    :catch_0
    iget-object v9, v0, LC5/l;->a:Lm2/l;

    .line 31
    .line 32
    iget-object v10, v9, Lm2/l;->I:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v10, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    .line 38
    .line 39
    iget-object v9, v9, Lm2/l;->H:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v9, [I

    .line 42
    .line 43
    aput v5, v9, v5

    .line 44
    .line 45
    aput v5, v9, v6

    .line 46
    .line 47
    aput v5, v9, v4

    .line 48
    .line 49
    aput v5, v9, v8

    .line 50
    .line 51
    iget v8, v2, Lw5/a;->H:I

    .line 52
    .line 53
    aget v11, v7, v6

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    :goto_0
    if-ge v12, v4, :cond_3

    .line 58
    .line 59
    if-ge v11, v8, :cond_3

    .line 60
    .line 61
    sget-object v14, LC5/m;->g:[[I

    .line 62
    .line 63
    invoke-static {v2, v9, v11, v14}, LC5/m;->j(Lw5/a;[II[[I)I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    rem-int/lit8 v15, v14, 0xa

    .line 68
    .line 69
    add-int/lit8 v15, v15, 0x30

    .line 70
    .line 71
    int-to-char v15, v15

    .line 72
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    array-length v15, v9

    .line 76
    :goto_1
    if-ge v5, v15, :cond_0

    .line 77
    .line 78
    aget v16, v9, v5

    .line 79
    .line 80
    add-int v11, v11, v16

    .line 81
    .line 82
    add-int/2addr v5, v6

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    if-lt v14, v3, :cond_1

    .line 85
    .line 86
    rsub-int/lit8 v5, v12, 0x1

    .line 87
    .line 88
    shl-int v5, v6, v5

    .line 89
    .line 90
    or-int/2addr v13, v5

    .line 91
    :cond_1
    if-eq v12, v6, :cond_2

    .line 92
    .line 93
    invoke-virtual {v2, v11}, Lw5/a;->e(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v2, v5}, Lw5/a;->f(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    move v11, v5

    .line 102
    :cond_2
    add-int/2addr v12, v6

    .line 103
    const/4 v5, 0x0

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ne v2, v4, :cond_7

    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    rem-int/lit8 v2, v2, 0x4

    .line 120
    .line 121
    if-ne v2, v13, :cond_6

    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v5, 0x0

    .line 132
    if-eq v3, v4, :cond_4

    .line 133
    .line 134
    move-object v3, v5

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    new-instance v3, Ljava/util/EnumMap;

    .line 137
    .line 138
    const-class v8, Lq5/n;

    .line 139
    .line 140
    invoke-direct {v3, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    sget-object v8, Lq5/n;->J:Lq5/n;

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v3, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :goto_2
    new-instance v8, Lq5/m;

    .line 153
    .line 154
    new-instance v9, Lq5/o;

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    aget v12, v7, v10

    .line 158
    .line 159
    aget v7, v7, v6

    .line 160
    .line 161
    add-int/2addr v12, v7

    .line 162
    int-to-float v7, v12

    .line 163
    const/high16 v10, 0x40000000    # 2.0f

    .line 164
    .line 165
    div-float/2addr v7, v10

    .line 166
    int-to-float v1, v1

    .line 167
    invoke-direct {v9, v7, v1}, Lq5/o;-><init>(FF)V

    .line 168
    .line 169
    .line 170
    new-instance v7, Lq5/o;

    .line 171
    .line 172
    int-to-float v10, v11

    .line 173
    invoke-direct {v7, v10, v1}, Lq5/o;-><init>(FF)V

    .line 174
    .line 175
    .line 176
    new-array v1, v4, [Lq5/o;

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    aput-object v9, v1, v4

    .line 180
    .line 181
    aput-object v7, v1, v6

    .line 182
    .line 183
    sget-object v4, Lq5/a;->W:Lq5/a;

    .line 184
    .line 185
    invoke-direct {v8, v2, v5, v1, v4}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 186
    .line 187
    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    invoke-virtual {v8, v3}, Lq5/m;->a(Ljava/util/Map;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    return-object v8

    .line 194
    :cond_6
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 195
    .line 196
    throw v1

    .line 197
    :cond_7
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 198
    .line 199
    throw v1
.end method
