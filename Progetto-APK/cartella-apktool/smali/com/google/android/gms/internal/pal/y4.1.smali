.class public abstract Lcom/google/android/gms/internal/pal/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final G:Lcom/google/android/gms/internal/pal/m2;

.field public static final H:LJ3/d;

.field public static final I:[LJ3/d;

.field public static final J:[B

.field public static final K:[[B

.field public static final L:[I

.field public static final M:[I

.field public static final N:[I

.field public static final O:[I

.field public static P:Lcom/google/android/gms/internal/pal/p3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/m2;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string v2, "gads:adshield:enable_adshield_instrumentation"

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/pal/m2;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/pal/y4;->G:Lcom/google/android/gms/internal/pal/m2;

    .line 11
    .line 12
    new-instance v0, LJ3/d;

    .line 13
    .line 14
    const-string v1, "ADS_ID"

    .line 15
    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    invoke-direct {v0, v2, v3, v1}, LJ3/d;-><init>(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/pal/y4;->H:LJ3/d;

    .line 22
    .line 23
    new-instance v1, LJ3/d;

    .line 24
    .line 25
    const-string v2, "MAKE_REQUEST_WITH_SIGNALS"

    .line 26
    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    invoke-direct {v1, v3, v4, v2}, LJ3/d;-><init>(JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [LJ3/d;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aput-object v0, v2, v3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object v1, v2, v0

    .line 40
    .line 41
    sput-object v2, Lcom/google/android/gms/internal/pal/y4;->I:[LJ3/d;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [B

    .line 45
    .line 46
    sput-object v0, Lcom/google/android/gms/internal/pal/y4;->J:[B

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    const/16 v1, 0x20

    .line 50
    .line 51
    new-array v2, v1, [B

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    new-array v4, v1, [B

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x5

    .line 63
    new-array v6, v1, [B

    .line 64
    .line 65
    fill-array-data v6, :array_2

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x4

    .line 69
    new-array v8, v1, [B

    .line 70
    .line 71
    fill-array-data v8, :array_3

    .line 72
    .line 73
    .line 74
    new-array v9, v1, [B

    .line 75
    .line 76
    fill-array-data v9, :array_4

    .line 77
    .line 78
    .line 79
    new-array v10, v1, [B

    .line 80
    .line 81
    fill-array-data v10, :array_5

    .line 82
    .line 83
    .line 84
    new-array v1, v1, [B

    .line 85
    .line 86
    fill-array-data v1, :array_6

    .line 87
    .line 88
    .line 89
    const/4 v11, 0x7

    .line 90
    new-array v11, v11, [[B

    .line 91
    .line 92
    aput-object v2, v11, v0

    .line 93
    .line 94
    aput-object v4, v11, v3

    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    aput-object v6, v11, v0

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    aput-object v8, v11, v0

    .line 101
    .line 102
    aput-object v9, v11, v7

    .line 103
    .line 104
    aput-object v10, v11, v5

    .line 105
    .line 106
    const/4 v0, 0x6

    .line 107
    aput-object v1, v11, v0

    .line 108
    .line 109
    sput-object v11, Lcom/google/android/gms/internal/pal/y4;->K:[[B

    .line 110
    .line 111
    const/16 v0, 0x19

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    new-array v2, v1, [I

    .line 116
    .line 117
    fill-array-data v2, :array_7

    .line 118
    .line 119
    .line 120
    sput-object v2, Lcom/google/android/gms/internal/pal/y4;->L:[I

    .line 121
    .line 122
    new-array v1, v1, [I

    .line 123
    .line 124
    fill-array-data v1, :array_8

    .line 125
    .line 126
    .line 127
    sput-object v1, Lcom/google/android/gms/internal/pal/y4;->M:[I

    .line 128
    .line 129
    const v1, 0x3ffffff

    .line 130
    .line 131
    .line 132
    const v2, 0x1ffffff

    .line 133
    .line 134
    .line 135
    filled-new-array {v1, v2}, [I

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sput-object v1, Lcom/google/android/gms/internal/pal/y4;->N:[I

    .line 140
    .line 141
    const/16 v1, 0x1a

    .line 142
    .line 143
    filled-new-array {v1, v0}, [I

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/google/android/gms/internal/pal/y4;->O:[I

    .line 148
    .line 149
    return-void

    .line 150
    nop

    .line 151
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 1
        -0x20t
        -0x15t
        0x7at
        0x7ct
        0x3bt
        0x41t
        -0x48t
        -0x52t
        0x16t
        0x56t
        -0x1dt
        -0x6t
        -0xft
        -0x61t
        -0x3ct
        0x6at
        -0x26t
        0x9t
        -0x73t
        -0x15t
        -0x64t
        0x32t
        -0x4ft
        -0x3t
        -0x7at
        0x62t
        0x5t
        0x16t
        0x5ft
        0x49t
        -0x48t
        0x0t
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_3
    .array-data 1
        0x5ft
        -0x64t
        -0x6bt
        -0x44t
        -0x5dt
        0x50t
        -0x74t
        0x24t
        -0x4ft
        -0x30t
        -0x4ft
        0x55t
        -0x64t
        -0x7dt
        -0x11t
        0x5bt
        0x4t
        0x44t
        0x5ct
        -0x3ct
        0x58t
        0x1ct
        -0x72t
        -0x7at
        -0x28t
        0x22t
        0x4et
        -0x23t
        -0x30t
        -0x61t
        0x11t
        0x57t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_4
    .array-data 1
        -0x14t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_5
    .array-data 1
        -0x13t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_6
    .array-data 1
        -0x12t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0x10
        0x13
        0x16
        0x19
        0x1c
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x0
        0x1
        0x3
        0x4
        0x6
    .end array-data
.end method

.method public static A(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    add-int/lit8 p0, p0, -0x2

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public static A0([J)[B
    .locals 17

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/pal/y4;->O:[I

    .line 12
    .line 13
    const/16 v5, 0x19

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    const/16 v7, 0x1f

    .line 17
    .line 18
    const/16 v8, 0x9

    .line 19
    .line 20
    if-ge v3, v6, :cond_1

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_1
    if-ge v6, v8, :cond_0

    .line 24
    .line 25
    aget-wide v9, v1, v6

    .line 26
    .line 27
    and-int/lit8 v11, v6, 0x1

    .line 28
    .line 29
    aget v11, v4, v11

    .line 30
    .line 31
    shr-long v12, v9, v7

    .line 32
    .line 33
    and-long/2addr v12, v9

    .line 34
    shr-long/2addr v12, v11

    .line 35
    long-to-int v13, v12

    .line 36
    neg-int v12, v13

    .line 37
    shl-int v11, v12, v11

    .line 38
    .line 39
    int-to-long v13, v11

    .line 40
    add-long/2addr v9, v13

    .line 41
    aput-wide v9, v1, v6

    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    aget-wide v9, v1, v6

    .line 46
    .line 47
    int-to-long v11, v12

    .line 48
    sub-long/2addr v9, v11

    .line 49
    aput-wide v9, v1, v6

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    aget-wide v9, v1, v8

    .line 53
    .line 54
    shr-long v6, v9, v7

    .line 55
    .line 56
    and-long/2addr v6, v9

    .line 57
    shr-long v4, v6, v5

    .line 58
    .line 59
    long-to-int v5, v4

    .line 60
    neg-int v4, v5

    .line 61
    shl-int/lit8 v5, v4, 0x19

    .line 62
    .line 63
    int-to-long v5, v5

    .line 64
    add-long/2addr v9, v5

    .line 65
    aput-wide v9, v1, v8

    .line 66
    .line 67
    aget-wide v5, v1, v2

    .line 68
    .line 69
    mul-int/lit8 v4, v4, 0x13

    .line 70
    .line 71
    int-to-long v7, v4

    .line 72
    sub-long/2addr v5, v7

    .line 73
    aput-wide v5, v1, v2

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    aget-wide v9, v1, v2

    .line 79
    .line 80
    shr-long v11, v9, v7

    .line 81
    .line 82
    and-long/2addr v11, v9

    .line 83
    const/16 v3, 0x1a

    .line 84
    .line 85
    shr-long/2addr v11, v3

    .line 86
    long-to-int v3, v11

    .line 87
    neg-int v3, v3

    .line 88
    shl-int/lit8 v11, v3, 0x1a

    .line 89
    .line 90
    int-to-long v11, v11

    .line 91
    add-long/2addr v9, v11

    .line 92
    aput-wide v9, v1, v2

    .line 93
    .line 94
    const/4 v9, 0x1

    .line 95
    aget-wide v10, v1, v9

    .line 96
    .line 97
    int-to-long v12, v3

    .line 98
    sub-long/2addr v10, v12

    .line 99
    aput-wide v10, v1, v9

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    :goto_2
    sget-object v10, Lcom/google/android/gms/internal/pal/y4;->N:[I

    .line 103
    .line 104
    if-ge v3, v6, :cond_3

    .line 105
    .line 106
    const/4 v11, 0x0

    .line 107
    :goto_3
    if-ge v11, v8, :cond_2

    .line 108
    .line 109
    aget-wide v12, v1, v11

    .line 110
    .line 111
    and-int/lit8 v14, v11, 0x1

    .line 112
    .line 113
    aget v15, v4, v14

    .line 114
    .line 115
    aget v14, v10, v14

    .line 116
    .line 117
    move-object/from16 v16, v10

    .line 118
    .line 119
    int-to-long v9, v14

    .line 120
    and-long/2addr v9, v12

    .line 121
    aput-wide v9, v1, v11

    .line 122
    .line 123
    add-int/lit8 v11, v11, 0x1

    .line 124
    .line 125
    aget-wide v9, v1, v11

    .line 126
    .line 127
    shr-long/2addr v12, v15

    .line 128
    long-to-int v13, v12

    .line 129
    int-to-long v12, v13

    .line 130
    add-long/2addr v9, v12

    .line 131
    aput-wide v9, v1, v11

    .line 132
    .line 133
    move-object/from16 v10, v16

    .line 134
    .line 135
    const/4 v9, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    const/4 v9, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move-object/from16 v16, v10

    .line 142
    .line 143
    aget-wide v3, v1, v8

    .line 144
    .line 145
    const-wide/32 v9, 0x1ffffff

    .line 146
    .line 147
    .line 148
    and-long/2addr v9, v3

    .line 149
    aput-wide v9, v1, v8

    .line 150
    .line 151
    aget-wide v8, v1, v2

    .line 152
    .line 153
    shr-long/2addr v3, v5

    .line 154
    long-to-int v4, v3

    .line 155
    mul-int/lit8 v4, v4, 0x13

    .line 156
    .line 157
    int-to-long v3, v4

    .line 158
    add-long/2addr v8, v3

    .line 159
    aput-wide v8, v1, v2

    .line 160
    .line 161
    long-to-int v3, v8

    .line 162
    const v4, -0x3ffffed

    .line 163
    .line 164
    .line 165
    add-int/2addr v3, v4

    .line 166
    shr-int/2addr v3, v7

    .line 167
    not-int v3, v3

    .line 168
    const/4 v4, 0x1

    .line 169
    :goto_4
    if-ge v4, v0, :cond_4

    .line 170
    .line 171
    aget-wide v8, v1, v4

    .line 172
    .line 173
    long-to-int v5, v8

    .line 174
    and-int/lit8 v8, v4, 0x1

    .line 175
    .line 176
    aget v8, v16, v8

    .line 177
    .line 178
    xor-int/2addr v5, v8

    .line 179
    not-int v5, v5

    .line 180
    shl-int/lit8 v8, v5, 0x10

    .line 181
    .line 182
    and-int/2addr v5, v8

    .line 183
    shl-int/lit8 v8, v5, 0x8

    .line 184
    .line 185
    and-int/2addr v5, v8

    .line 186
    shl-int/lit8 v8, v5, 0x4

    .line 187
    .line 188
    and-int/2addr v5, v8

    .line 189
    shl-int/lit8 v8, v5, 0x2

    .line 190
    .line 191
    and-int/2addr v5, v8

    .line 192
    add-int v8, v5, v5

    .line 193
    .line 194
    and-int/2addr v5, v8

    .line 195
    shr-int/2addr v5, v7

    .line 196
    and-int/2addr v3, v5

    .line 197
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_4
    aget-wide v4, v1, v2

    .line 201
    .line 202
    const v7, 0x3ffffed

    .line 203
    .line 204
    .line 205
    and-int/2addr v7, v3

    .line 206
    int-to-long v7, v7

    .line 207
    sub-long/2addr v4, v7

    .line 208
    aput-wide v4, v1, v2

    .line 209
    .line 210
    const v4, 0x1ffffff

    .line 211
    .line 212
    .line 213
    and-int/2addr v4, v3

    .line 214
    int-to-long v4, v4

    .line 215
    const/4 v7, 0x1

    .line 216
    aget-wide v8, v1, v7

    .line 217
    .line 218
    sub-long/2addr v8, v4

    .line 219
    aput-wide v8, v1, v7

    .line 220
    .line 221
    :goto_5
    if-ge v6, v0, :cond_5

    .line 222
    .line 223
    aget-wide v7, v1, v6

    .line 224
    .line 225
    const v9, 0x3ffffff

    .line 226
    .line 227
    .line 228
    and-int/2addr v9, v3

    .line 229
    int-to-long v9, v9

    .line 230
    sub-long/2addr v7, v9

    .line 231
    aput-wide v7, v1, v6

    .line 232
    .line 233
    add-int/lit8 v7, v6, 0x1

    .line 234
    .line 235
    aget-wide v8, v1, v7

    .line 236
    .line 237
    sub-long/2addr v8, v4

    .line 238
    aput-wide v8, v1, v7

    .line 239
    .line 240
    add-int/lit8 v6, v6, 0x2

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_5
    const/4 v3, 0x0

    .line 244
    :goto_6
    if-ge v3, v0, :cond_6

    .line 245
    .line 246
    aget-wide v4, v1, v3

    .line 247
    .line 248
    sget-object v6, Lcom/google/android/gms/internal/pal/y4;->M:[I

    .line 249
    .line 250
    aget v6, v6, v3

    .line 251
    .line 252
    shl-long/2addr v4, v6

    .line 253
    aput-wide v4, v1, v3

    .line 254
    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_6
    const/16 v3, 0x20

    .line 259
    .line 260
    new-array v3, v3, [B

    .line 261
    .line 262
    :goto_7
    if-ge v2, v0, :cond_7

    .line 263
    .line 264
    sget-object v4, Lcom/google/android/gms/internal/pal/y4;->L:[I

    .line 265
    .line 266
    aget v4, v4, v2

    .line 267
    .line 268
    aget-byte v5, v3, v4

    .line 269
    .line 270
    aget-wide v6, v1, v2

    .line 271
    .line 272
    int-to-long v8, v5

    .line 273
    const-wide/16 v10, 0xff

    .line 274
    .line 275
    and-long v12, v6, v10

    .line 276
    .line 277
    or-long/2addr v8, v12

    .line 278
    long-to-int v5, v8

    .line 279
    int-to-byte v5, v5

    .line 280
    aput-byte v5, v3, v4

    .line 281
    .line 282
    add-int/lit8 v5, v4, 0x1

    .line 283
    .line 284
    aget-byte v8, v3, v5

    .line 285
    .line 286
    int-to-long v8, v8

    .line 287
    const/16 v12, 0x8

    .line 288
    .line 289
    shr-long v12, v6, v12

    .line 290
    .line 291
    and-long/2addr v12, v10

    .line 292
    or-long/2addr v8, v12

    .line 293
    long-to-int v9, v8

    .line 294
    int-to-byte v8, v9

    .line 295
    aput-byte v8, v3, v5

    .line 296
    .line 297
    add-int/lit8 v5, v4, 0x2

    .line 298
    .line 299
    aget-byte v8, v3, v5

    .line 300
    .line 301
    int-to-long v8, v8

    .line 302
    const/16 v12, 0x10

    .line 303
    .line 304
    shr-long v12, v6, v12

    .line 305
    .line 306
    and-long/2addr v12, v10

    .line 307
    or-long/2addr v8, v12

    .line 308
    long-to-int v9, v8

    .line 309
    int-to-byte v8, v9

    .line 310
    aput-byte v8, v3, v5

    .line 311
    .line 312
    add-int/lit8 v4, v4, 0x3

    .line 313
    .line 314
    aget-byte v5, v3, v4

    .line 315
    .line 316
    int-to-long v8, v5

    .line 317
    const/16 v5, 0x18

    .line 318
    .line 319
    shr-long v5, v6, v5

    .line 320
    .line 321
    and-long/2addr v5, v10

    .line 322
    or-long/2addr v5, v8

    .line 323
    long-to-int v6, v5

    .line 324
    int-to-byte v5, v6

    .line 325
    aput-byte v5, v3, v4

    .line 326
    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_7
    return-object v3
.end method

.method public static synthetic B(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "UNRECOGNIZED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "DHKEM_P521_HKDF_SHA512"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "DHKEM_P384_HKDF_SHA384"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "DHKEM_P256_HKDF_SHA256"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "DHKEM_X25519_HKDF_SHA256"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const-string p0, "KEM_UNKNOWN"

    .line 32
    .line 33
    return-object p0
.end method

.method public static B0(I[BILA0/w;)I
    .locals 2

    .line 1
    and-int/lit8 p0, p0, 0x7f

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget-byte v1, p1, p2

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    shl-int/lit8 p1, v1, 0x7

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    iput p0, p3, LA0/w;->b:I

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    and-int/lit8 v1, v1, 0x7f

    .line 16
    .line 17
    shl-int/lit8 v1, v1, 0x7

    .line 18
    .line 19
    or-int/2addr p0, v1

    .line 20
    add-int/lit8 v1, p2, 0x2

    .line 21
    .line 22
    aget-byte v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    shl-int/lit8 p1, v0, 0xe

    .line 27
    .line 28
    or-int/2addr p0, p1

    .line 29
    iput p0, p3, LA0/w;->b:I

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 33
    .line 34
    shl-int/lit8 v0, v0, 0xe

    .line 35
    .line 36
    or-int/2addr p0, v0

    .line 37
    add-int/lit8 v0, p2, 0x3

    .line 38
    .line 39
    aget-byte v1, p1, v1

    .line 40
    .line 41
    if-ltz v1, :cond_2

    .line 42
    .line 43
    shl-int/lit8 p1, v1, 0x15

    .line 44
    .line 45
    or-int/2addr p0, p1

    .line 46
    iput p0, p3, LA0/w;->b:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    .line 50
    .line 51
    shl-int/lit8 v1, v1, 0x15

    .line 52
    .line 53
    or-int/2addr p0, v1

    .line 54
    add-int/lit8 p2, p2, 0x4

    .line 55
    .line 56
    aget-byte v0, p1, v0

    .line 57
    .line 58
    if-ltz v0, :cond_3

    .line 59
    .line 60
    shl-int/lit8 p1, v0, 0x1c

    .line 61
    .line 62
    or-int/2addr p0, p1

    .line 63
    iput p0, p3, LA0/w;->b:I

    .line 64
    .line 65
    return p2

    .line 66
    :cond_3
    and-int/lit8 v0, v0, 0x7f

    .line 67
    .line 68
    shl-int/lit8 v0, v0, 0x1c

    .line 69
    .line 70
    or-int/2addr p0, v0

    .line 71
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 72
    .line 73
    aget-byte p2, p1, p2

    .line 74
    .line 75
    if-gez p2, :cond_4

    .line 76
    .line 77
    move p2, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput p0, p3, LA0/w;->b:I

    .line 80
    .line 81
    return v0
.end method

.method public static C(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq p0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq p0, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p0, v2, :cond_2

    .line 13
    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x7

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x6

    .line 23
    return p0

    .line 24
    :cond_2
    return v0

    .line 25
    :cond_3
    return v1

    .line 26
    :cond_4
    return v2

    .line 27
    :cond_5
    return v0
.end method

.method public static C0(I)Ljava/security/spec/ECParameterSpec;
    .locals 4

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const-string p0, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    .line 9
    .line 10
    const-string v0, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    .line 11
    .line 12
    const-string v1, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    .line 13
    .line 14
    const-string v2, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    .line 15
    .line 16
    const-string v3, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    .line 17
    .line 18
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/pal/y4;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    .line 24
    .line 25
    const-string v0, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    .line 26
    .line 27
    const-string v1, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    .line 28
    .line 29
    const-string v2, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    .line 30
    .line 31
    const-string v3, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    .line 32
    .line 33
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/pal/y4;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const-string p0, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    .line 39
    .line 40
    const-string v0, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    .line 41
    .line 42
    const-string v1, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    .line 43
    .line 44
    const-string v2, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    .line 45
    .line 46
    const-string v3, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    .line 47
    .line 48
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/pal/y4;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static D([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static D0(I[BIILcom/google/android/gms/internal/pal/I;LA0/w;)I
    .locals 2

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/pal/F;

    .line 2
    .line 3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget v0, p5, LA0/w;->b:I

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/pal/F;->b(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-ge p2, p3, :cond_1

    .line 13
    .line 14
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p5, LA0/w;->b:I

    .line 19
    .line 20
    if-eq p0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget v0, p5, LA0/w;->b:I

    .line 28
    .line 29
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/pal/F;->b(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return p2
.end method

.method public static E0(Ljava/security/spec/EllipticCurve;ILjava/security/spec/ECPoint;)[B
    .locals 5

    .line 1
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, 0x7

    .line 19
    .line 20
    div-int/lit8 p0, p0, 0x8

    .line 21
    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-eq p1, v2, :cond_1

    .line 30
    .line 31
    add-int/2addr p0, v0

    .line 32
    new-array p1, p0, [B

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    array-length v4, v3

    .line 43
    sub-int/2addr p0, v4

    .line 44
    invoke-static {v3, v1, p1, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eq v0, p0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x3

    .line 59
    :goto_0
    aput-byte v2, p1, v1

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_1
    add-int p1, p0, p0

    .line 63
    .line 64
    new-array v0, p1, [B

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    array-length v3, v2

    .line 75
    if-le v3, p0, :cond_2

    .line 76
    .line 77
    sub-int v4, v3, p0

    .line 78
    .line 79
    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_2
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    array-length v3, p2

    .line 92
    if-le v3, p0, :cond_3

    .line 93
    .line 94
    sub-int v4, v3, p0

    .line 95
    .line 96
    invoke-static {p2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    :cond_3
    array-length v3, p2

    .line 101
    sub-int/2addr p1, v3

    .line 102
    invoke-static {p2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    array-length p1, v2

    .line 106
    sub-int/2addr p0, p1

    .line 107
    invoke-static {v2, v1, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    add-int p1, p0, p0

    .line 112
    .line 113
    add-int/2addr p1, v0

    .line 114
    new-array v2, p1, [B

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    array-length v4, p2

    .line 133
    sub-int/2addr p1, v4

    .line 134
    invoke-static {p2, v1, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    array-length p1, v3

    .line 138
    add-int/2addr p0, v0

    .line 139
    sub-int/2addr p0, p1

    .line 140
    invoke-static {v3, v1, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x4

    .line 144
    aput-byte p0, v2, v1

    .line 145
    .line 146
    return-object v2
.end method

.method public static F(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/g4;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/google/android/gms/internal/pal/r1;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/pal/r1;

    .line 11
    .line 12
    const-string v1, "HmacSha256"

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x4

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    invoke-static {p0}, LK/k;->i(I)LK/k;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x5

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    const/4 p0, 0x2

    .line 46
    invoke-static {p0}, LK/k;->i(I)LK/k;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 v0, 0x6

    .line 56
    if-ne p0, v0, :cond_3

    .line 57
    .line 58
    invoke-static {v1}, LK/k;->i(I)LK/k;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v0, "Unrecognized HPKE KEM identifier"

    .line 66
    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static F0([BILA0/w;)I
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p0, p1

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-ltz v5, :cond_0

    .line 11
    .line 12
    iput-wide v1, p2, LA0/w;->a:J

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    aget-byte v0, p0, v0

    .line 18
    .line 19
    const-wide/16 v3, 0x7f

    .line 20
    .line 21
    and-long/2addr v1, v3

    .line 22
    and-int/lit8 v3, v0, 0x7f

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    const/4 v5, 0x7

    .line 26
    shl-long/2addr v3, v5

    .line 27
    or-long/2addr v1, v3

    .line 28
    const/4 v3, 0x7

    .line 29
    :goto_0
    if-gez v0, :cond_1

    .line 30
    .line 31
    add-int/lit8 v0, p1, 0x1

    .line 32
    .line 33
    aget-byte p1, p0, p1

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    and-int/lit8 v4, p1, 0x7f

    .line 37
    .line 38
    int-to-long v6, v4

    .line 39
    shl-long/2addr v6, v3

    .line 40
    or-long/2addr v1, v6

    .line 41
    move v8, v0

    .line 42
    move v0, p1

    .line 43
    move p1, v8

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-wide v1, p2, LA0/w;->a:J

    .line 46
    .line 47
    return p1
.end method

.method public static G(I)Ljava/lang/String;
    .locals 3

    .line 1
    add-int/lit8 v0, p0, -0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_4

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const-string p0, "HmacSha224"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 22
    .line 23
    if-eq p0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "hash unsupported for HMAC: "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v2, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v2

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_2
    const-string p0, "HmacSha512"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    const-string p0, "HmacSha256"

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    const-string p0, "HmacSha384"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_5
    const-string p0, "HmacSha1"

    .line 57
    .line 58
    return-object p0
.end method

.method public static G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/math/BigInteger;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/math/BigInteger;

    .line 12
    .line 13
    const-string v1, "3"

    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/math/BigInteger;

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    invoke-direct {v1, p2, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-direct {p2, p3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-instance p3, Ljava/math/BigInteger;

    .line 35
    .line 36
    invoke-direct {p3, p4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance p4, Ljava/security/spec/ECFieldFp;

    .line 40
    .line 41
    invoke-direct {p4, v0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/security/spec/EllipticCurve;

    .line 45
    .line 46
    invoke-direct {v0, p4, p1, v1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/security/spec/ECPoint;

    .line 50
    .line 51
    invoke-direct {p1, p2, p3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/security/spec/ECParameterSpec;

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    invoke-direct {p2, v0, p1, p0, p3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 58
    .line 59
    .line 60
    return-object p2
.end method

.method public static varargs H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "null"

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v9

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v4, 0x40

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "com.google.common.base.Strings"

    .line 56
    .line 57
    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 62
    .line 63
    const-string v5, "Exception during lenientFormat for "

    .line 64
    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v5, "com.google.common.base.Strings"

    .line 70
    .line 71
    const-string v6, "lenientToString"

    .line 72
    .line 73
    move-object v8, v9

    .line 74
    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    const-string v3, "<"

    .line 78
    .line 79
    const-string v4, " threw "

    .line 80
    .line 81
    invoke-static {v3, v2, v4}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v3, ">"

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_1
    aput-object v2, p1, v1

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    mul-int/lit8 v2, v2, 0x10

    .line 117
    .line 118
    add-int/2addr v2, v3

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    :goto_2
    array-length v3, p1

    .line 124
    if-ge v0, v3, :cond_3

    .line 125
    .line 126
    const-string v4, "%s"

    .line 127
    .line 128
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/4 v5, -0x1

    .line 133
    if-ne v4, v5, :cond_2

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_2
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    add-int/lit8 v2, v0, 0x1

    .line 140
    .line 141
    aget-object v0, p1, v0

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    add-int/lit8 v0, v4, 0x2

    .line 147
    .line 148
    move v10, v2

    .line 149
    move v2, v0

    .line 150
    move v0, v10

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    if-ge v0, v3, :cond_5

    .line 160
    .line 161
    const-string p0, " ["

    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    add-int/lit8 p0, v0, 0x1

    .line 167
    .line 168
    aget-object v0, p1, v0

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :goto_4
    array-length v0, p1

    .line 174
    if-ge p0, v0, :cond_4

    .line 175
    .line 176
    const-string v0, ", "

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    add-int/lit8 v0, p0, 0x1

    .line 182
    .line 183
    aget-object p0, p1, p0

    .line 184
    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    move p0, v0

    .line 189
    goto :goto_4

    .line 190
    :cond_4
    const/16 p0, 0x5d

    .line 191
    .line 192
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0
.end method

.method public static H0([BI)J
    .locals 7

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0xff

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    add-int/lit8 v4, p1, 0x1

    .line 8
    .line 9
    aget-byte v4, p0, v4

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    and-long/2addr v4, v2

    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    shl-long/2addr v4, v6

    .line 16
    or-long/2addr v0, v4

    .line 17
    add-int/lit8 v4, p1, 0x2

    .line 18
    .line 19
    aget-byte v4, p0, v4

    .line 20
    .line 21
    int-to-long v4, v4

    .line 22
    and-long/2addr v4, v2

    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    shl-long/2addr v4, v6

    .line 26
    or-long/2addr v0, v4

    .line 27
    add-int/lit8 v4, p1, 0x3

    .line 28
    .line 29
    aget-byte v4, p0, v4

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    and-long/2addr v4, v2

    .line 33
    const/16 v6, 0x18

    .line 34
    .line 35
    shl-long/2addr v4, v6

    .line 36
    or-long/2addr v0, v4

    .line 37
    add-int/lit8 v4, p1, 0x4

    .line 38
    .line 39
    aget-byte v4, p0, v4

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    and-long/2addr v4, v2

    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    shl-long/2addr v4, v6

    .line 46
    or-long/2addr v0, v4

    .line 47
    add-int/lit8 v4, p1, 0x5

    .line 48
    .line 49
    aget-byte v4, p0, v4

    .line 50
    .line 51
    int-to-long v4, v4

    .line 52
    and-long/2addr v4, v2

    .line 53
    const/16 v6, 0x28

    .line 54
    .line 55
    shl-long/2addr v4, v6

    .line 56
    or-long/2addr v0, v4

    .line 57
    add-int/lit8 v4, p1, 0x6

    .line 58
    .line 59
    aget-byte v4, p0, v4

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    and-long/2addr v4, v2

    .line 63
    const/16 v6, 0x30

    .line 64
    .line 65
    shl-long/2addr v4, v6

    .line 66
    or-long/2addr v0, v4

    .line 67
    add-int/lit8 p1, p1, 0x7

    .line 68
    .line 69
    aget-byte p0, p0, p1

    .line 70
    .line 71
    int-to-long p0, p0

    .line 72
    and-long/2addr p0, v2

    .line 73
    const/16 v2, 0x38

    .line 74
    .line 75
    shl-long/2addr p0, v2

    .line 76
    or-long/2addr p0, v0

    .line 77
    return-wide p0
.end method

.method public static I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ljava/security/spec/ECFieldFp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Ljava/security/spec/ECFieldFp;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    const-string v0, "Only curves over prime order fields are supported"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static J(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    const-string v1, "index"

    .line 9
    .line 10
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/pal/y4;->b0(IILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static final K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p3, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    check-cast p3, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    const/16 v0, 0xa

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_2
    const/16 v2, 0x20

    .line 65
    .line 66
    if-ge v1, p1, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    instance-of p2, p3, Ljava/lang/String;

    .line 78
    .line 79
    const/16 v1, 0x22

    .line 80
    .line 81
    const-string v3, ": \""

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    check-cast p3, Ljava/lang/String;

    .line 89
    .line 90
    sget-object p1, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 91
    .line 92
    new-instance p1, Lcom/google/android/gms/internal/pal/q;

    .line 93
    .line 94
    sget-object p2, Lcom/google/android/gms/internal/pal/J;->a:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/pal/q;-><init>([B)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->n(Lcom/google/android/gms/internal/pal/r;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_5
    instance-of p2, p3, Lcom/google/android/gms/internal/pal/r;

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    check-cast p3, Lcom/google/android/gms/internal/pal/r;

    .line 122
    .line 123
    invoke-static {p3}, Lcom/google/android/gms/internal/pal/y4;->n(Lcom/google/android/gms/internal/pal/r;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/pal/D;

    .line 135
    .line 136
    const-string v1, "}"

    .line 137
    .line 138
    const-string v3, "\n"

    .line 139
    .line 140
    const-string v4, " {"

    .line 141
    .line 142
    if-eqz p2, :cond_8

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    check-cast p3, Lcom/google/android/gms/internal/pal/D;

    .line 148
    .line 149
    add-int/lit8 p2, p1, 0x2

    .line 150
    .line 151
    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/pal/y4;->d0(Lcom/google/android/gms/internal/pal/j;Ljava/lang/StringBuilder;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :goto_3
    if-ge v0, p1, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 170
    .line 171
    if-eqz p2, :cond_a

    .line 172
    .line 173
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    check-cast p3, Ljava/util/Map$Entry;

    .line 177
    .line 178
    add-int/lit8 p2, p1, 0x2

    .line 179
    .line 180
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    const-string v5, "key"

    .line 185
    .line 186
    invoke-static {p0, p2, v5, v4}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const-string v4, "value"

    .line 190
    .line 191
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-static {p0, p2, v4, p3}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :goto_4
    if-ge v0, p1, :cond_9

    .line 202
    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_a
    const-string p1, ": "

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public static L([J[J[J)V
    .locals 42

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p1, v0

    .line 3
    .line 4
    aget-wide v3, p2, v0

    .line 5
    .line 6
    mul-long v1, v1, v3

    .line 7
    .line 8
    aput-wide v1, p0, v0

    .line 9
    .line 10
    aget-wide v1, p1, v0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget-wide v4, p2, v3

    .line 14
    .line 15
    mul-long v4, v4, v1

    .line 16
    .line 17
    aget-wide v6, p1, v3

    .line 18
    .line 19
    aget-wide v8, p2, v0

    .line 20
    .line 21
    mul-long v6, v6, v8

    .line 22
    .line 23
    add-long/2addr v6, v4

    .line 24
    aput-wide v6, p0, v3

    .line 25
    .line 26
    aget-wide v4, p1, v3

    .line 27
    .line 28
    add-long v6, v4, v4

    .line 29
    .line 30
    aget-wide v10, p2, v3

    .line 31
    .line 32
    mul-long v6, v6, v10

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aget-wide v12, p2, v0

    .line 36
    .line 37
    mul-long v12, v12, v1

    .line 38
    .line 39
    add-long/2addr v12, v6

    .line 40
    aget-wide v6, p1, v0

    .line 41
    .line 42
    mul-long v6, v6, v8

    .line 43
    .line 44
    add-long/2addr v6, v12

    .line 45
    aput-wide v6, p0, v0

    .line 46
    .line 47
    aget-wide v6, p2, v0

    .line 48
    .line 49
    mul-long v12, v4, v6

    .line 50
    .line 51
    aget-wide v14, p1, v0

    .line 52
    .line 53
    mul-long v16, v14, v10

    .line 54
    .line 55
    add-long v16, v16, v12

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    aget-wide v12, p2, v0

    .line 59
    .line 60
    mul-long v12, v12, v1

    .line 61
    .line 62
    add-long v12, v12, v16

    .line 63
    .line 64
    aget-wide v16, p1, v0

    .line 65
    .line 66
    mul-long v16, v16, v8

    .line 67
    .line 68
    add-long v16, v16, v12

    .line 69
    .line 70
    aput-wide v16, p0, v0

    .line 71
    .line 72
    aget-wide v12, p2, v0

    .line 73
    .line 74
    mul-long v16, v4, v12

    .line 75
    .line 76
    aget-wide v18, p1, v0

    .line 77
    .line 78
    mul-long v20, v18, v10

    .line 79
    .line 80
    add-long v20, v20, v16

    .line 81
    .line 82
    mul-long v16, v14, v6

    .line 83
    .line 84
    add-long v20, v20, v20

    .line 85
    .line 86
    add-long v20, v20, v16

    .line 87
    .line 88
    const/4 v0, 0x4

    .line 89
    aget-wide v16, p2, v0

    .line 90
    .line 91
    mul-long v16, v16, v1

    .line 92
    .line 93
    add-long v16, v16, v20

    .line 94
    .line 95
    aget-wide v20, p1, v0

    .line 96
    .line 97
    mul-long v20, v20, v8

    .line 98
    .line 99
    add-long v20, v20, v16

    .line 100
    .line 101
    aput-wide v20, p0, v0

    .line 102
    .line 103
    mul-long v16, v14, v12

    .line 104
    .line 105
    mul-long v20, v18, v6

    .line 106
    .line 107
    add-long v20, v20, v16

    .line 108
    .line 109
    aget-wide v16, p2, v0

    .line 110
    .line 111
    mul-long v22, v4, v16

    .line 112
    .line 113
    add-long v22, v22, v20

    .line 114
    .line 115
    aget-wide v20, p1, v0

    .line 116
    .line 117
    mul-long v24, v20, v10

    .line 118
    .line 119
    add-long v24, v24, v22

    .line 120
    .line 121
    const/4 v0, 0x5

    .line 122
    aget-wide v22, p2, v0

    .line 123
    .line 124
    mul-long v22, v22, v1

    .line 125
    .line 126
    add-long v22, v22, v24

    .line 127
    .line 128
    aget-wide v24, p1, v0

    .line 129
    .line 130
    mul-long v24, v24, v8

    .line 131
    .line 132
    add-long v24, v24, v22

    .line 133
    .line 134
    aput-wide v24, p0, v0

    .line 135
    .line 136
    mul-long v22, v18, v12

    .line 137
    .line 138
    aget-wide v24, p2, v0

    .line 139
    .line 140
    mul-long v26, v4, v24

    .line 141
    .line 142
    add-long v26, v26, v22

    .line 143
    .line 144
    aget-wide v22, p1, v0

    .line 145
    .line 146
    mul-long v28, v22, v10

    .line 147
    .line 148
    add-long v28, v28, v26

    .line 149
    .line 150
    add-long v28, v28, v28

    .line 151
    .line 152
    mul-long v26, v14, v16

    .line 153
    .line 154
    add-long v26, v26, v28

    .line 155
    .line 156
    mul-long v28, v20, v6

    .line 157
    .line 158
    add-long v28, v28, v26

    .line 159
    .line 160
    const/4 v0, 0x6

    .line 161
    aget-wide v26, p2, v0

    .line 162
    .line 163
    mul-long v26, v26, v1

    .line 164
    .line 165
    add-long v26, v26, v28

    .line 166
    .line 167
    aget-wide v28, p1, v0

    .line 168
    .line 169
    mul-long v28, v28, v8

    .line 170
    .line 171
    add-long v28, v28, v26

    .line 172
    .line 173
    aput-wide v28, p0, v0

    .line 174
    .line 175
    mul-long v26, v18, v16

    .line 176
    .line 177
    mul-long v28, v20, v12

    .line 178
    .line 179
    add-long v28, v28, v26

    .line 180
    .line 181
    mul-long v26, v14, v24

    .line 182
    .line 183
    add-long v26, v26, v28

    .line 184
    .line 185
    mul-long v28, v22, v6

    .line 186
    .line 187
    add-long v28, v28, v26

    .line 188
    .line 189
    aget-wide v26, p2, v0

    .line 190
    .line 191
    mul-long v30, v4, v26

    .line 192
    .line 193
    add-long v30, v30, v28

    .line 194
    .line 195
    aget-wide v28, p1, v0

    .line 196
    .line 197
    mul-long v32, v28, v10

    .line 198
    .line 199
    add-long v32, v32, v30

    .line 200
    .line 201
    const/4 v0, 0x7

    .line 202
    aget-wide v30, p2, v0

    .line 203
    .line 204
    mul-long v30, v30, v1

    .line 205
    .line 206
    add-long v30, v30, v32

    .line 207
    .line 208
    aget-wide v32, p1, v0

    .line 209
    .line 210
    mul-long v32, v32, v8

    .line 211
    .line 212
    add-long v32, v32, v30

    .line 213
    .line 214
    aput-wide v32, p0, v0

    .line 215
    .line 216
    mul-long v30, v18, v24

    .line 217
    .line 218
    mul-long v32, v22, v12

    .line 219
    .line 220
    add-long v32, v32, v30

    .line 221
    .line 222
    aget-wide v30, p2, v0

    .line 223
    .line 224
    mul-long v34, v4, v30

    .line 225
    .line 226
    add-long v34, v34, v32

    .line 227
    .line 228
    aget-wide v32, p1, v0

    .line 229
    .line 230
    mul-long v36, v32, v10

    .line 231
    .line 232
    add-long v36, v36, v34

    .line 233
    .line 234
    mul-long v34, v20, v16

    .line 235
    .line 236
    add-long v36, v36, v36

    .line 237
    .line 238
    add-long v36, v36, v34

    .line 239
    .line 240
    mul-long v34, v14, v26

    .line 241
    .line 242
    add-long v34, v34, v36

    .line 243
    .line 244
    mul-long v36, v28, v6

    .line 245
    .line 246
    add-long v36, v36, v34

    .line 247
    .line 248
    const/16 v0, 0x8

    .line 249
    .line 250
    aget-wide v34, p2, v0

    .line 251
    .line 252
    mul-long v34, v34, v1

    .line 253
    .line 254
    add-long v34, v34, v36

    .line 255
    .line 256
    aget-wide v36, p1, v0

    .line 257
    .line 258
    mul-long v36, v36, v8

    .line 259
    .line 260
    add-long v36, v36, v34

    .line 261
    .line 262
    aput-wide v36, p0, v0

    .line 263
    .line 264
    mul-long v34, v20, v24

    .line 265
    .line 266
    mul-long v36, v22, v16

    .line 267
    .line 268
    add-long v36, v36, v34

    .line 269
    .line 270
    mul-long v34, v18, v26

    .line 271
    .line 272
    add-long v34, v34, v36

    .line 273
    .line 274
    mul-long v36, v28, v12

    .line 275
    .line 276
    add-long v36, v36, v34

    .line 277
    .line 278
    mul-long v34, v14, v30

    .line 279
    .line 280
    add-long v34, v34, v36

    .line 281
    .line 282
    mul-long v36, v32, v6

    .line 283
    .line 284
    add-long v36, v36, v34

    .line 285
    .line 286
    aget-wide v34, p2, v0

    .line 287
    .line 288
    mul-long v38, v4, v34

    .line 289
    .line 290
    add-long v38, v38, v36

    .line 291
    .line 292
    aget-wide v36, p1, v0

    .line 293
    .line 294
    mul-long v40, v36, v10

    .line 295
    .line 296
    add-long v40, v40, v38

    .line 297
    .line 298
    const/16 v0, 0x9

    .line 299
    .line 300
    aget-wide v38, p2, v0

    .line 301
    .line 302
    mul-long v1, v1, v38

    .line 303
    .line 304
    add-long v1, v1, v40

    .line 305
    .line 306
    aget-wide v38, p1, v0

    .line 307
    .line 308
    mul-long v38, v38, v8

    .line 309
    .line 310
    add-long v38, v38, v1

    .line 311
    .line 312
    aput-wide v38, p0, v0

    .line 313
    .line 314
    mul-long v1, v22, v24

    .line 315
    .line 316
    mul-long v8, v18, v30

    .line 317
    .line 318
    add-long/2addr v8, v1

    .line 319
    mul-long v1, v32, v12

    .line 320
    .line 321
    add-long/2addr v1, v8

    .line 322
    aget-wide v8, p2, v0

    .line 323
    .line 324
    mul-long v4, v4, v8

    .line 325
    .line 326
    add-long/2addr v4, v1

    .line 327
    aget-wide v0, p1, v0

    .line 328
    .line 329
    mul-long v10, v10, v0

    .line 330
    .line 331
    add-long/2addr v10, v4

    .line 332
    add-long/2addr v10, v10

    .line 333
    mul-long v2, v20, v26

    .line 334
    .line 335
    add-long/2addr v2, v10

    .line 336
    mul-long v4, v28, v16

    .line 337
    .line 338
    add-long/2addr v4, v2

    .line 339
    mul-long v2, v14, v34

    .line 340
    .line 341
    add-long/2addr v2, v4

    .line 342
    mul-long v4, v36, v6

    .line 343
    .line 344
    add-long/2addr v4, v2

    .line 345
    const/16 v2, 0xa

    .line 346
    .line 347
    aput-wide v4, p0, v2

    .line 348
    .line 349
    mul-long v2, v22, v26

    .line 350
    .line 351
    mul-long v4, v28, v24

    .line 352
    .line 353
    add-long/2addr v4, v2

    .line 354
    mul-long v2, v20, v30

    .line 355
    .line 356
    add-long/2addr v2, v4

    .line 357
    mul-long v4, v32, v16

    .line 358
    .line 359
    add-long/2addr v4, v2

    .line 360
    mul-long v2, v18, v34

    .line 361
    .line 362
    add-long/2addr v2, v4

    .line 363
    mul-long v4, v36, v12

    .line 364
    .line 365
    add-long/2addr v4, v2

    .line 366
    mul-long v14, v14, v8

    .line 367
    .line 368
    add-long/2addr v14, v4

    .line 369
    mul-long v6, v6, v0

    .line 370
    .line 371
    add-long/2addr v6, v14

    .line 372
    const/16 v2, 0xb

    .line 373
    .line 374
    aput-wide v6, p0, v2

    .line 375
    .line 376
    mul-long v2, v22, v30

    .line 377
    .line 378
    mul-long v4, v32, v24

    .line 379
    .line 380
    add-long/2addr v4, v2

    .line 381
    mul-long v18, v18, v8

    .line 382
    .line 383
    add-long v18, v18, v4

    .line 384
    .line 385
    mul-long v12, v12, v0

    .line 386
    .line 387
    add-long v12, v12, v18

    .line 388
    .line 389
    mul-long v2, v28, v26

    .line 390
    .line 391
    add-long/2addr v12, v12

    .line 392
    add-long/2addr v12, v2

    .line 393
    mul-long v2, v20, v34

    .line 394
    .line 395
    add-long/2addr v2, v12

    .line 396
    mul-long v4, v36, v16

    .line 397
    .line 398
    add-long/2addr v4, v2

    .line 399
    const/16 v2, 0xc

    .line 400
    .line 401
    aput-wide v4, p0, v2

    .line 402
    .line 403
    mul-long v2, v28, v30

    .line 404
    .line 405
    mul-long v4, v32, v26

    .line 406
    .line 407
    add-long/2addr v4, v2

    .line 408
    mul-long v2, v22, v34

    .line 409
    .line 410
    add-long/2addr v2, v4

    .line 411
    mul-long v4, v36, v24

    .line 412
    .line 413
    add-long/2addr v4, v2

    .line 414
    mul-long v20, v20, v8

    .line 415
    .line 416
    add-long v20, v20, v4

    .line 417
    .line 418
    mul-long v16, v16, v0

    .line 419
    .line 420
    add-long v16, v16, v20

    .line 421
    .line 422
    const/16 v2, 0xd

    .line 423
    .line 424
    aput-wide v16, p0, v2

    .line 425
    .line 426
    mul-long v2, v32, v30

    .line 427
    .line 428
    mul-long v22, v22, v8

    .line 429
    .line 430
    add-long v22, v22, v2

    .line 431
    .line 432
    mul-long v24, v24, v0

    .line 433
    .line 434
    add-long v24, v24, v22

    .line 435
    .line 436
    add-long v24, v24, v24

    .line 437
    .line 438
    mul-long v2, v28, v34

    .line 439
    .line 440
    add-long v2, v2, v24

    .line 441
    .line 442
    mul-long v4, v36, v26

    .line 443
    .line 444
    add-long/2addr v4, v2

    .line 445
    const/16 v2, 0xe

    .line 446
    .line 447
    aput-wide v4, p0, v2

    .line 448
    .line 449
    mul-long v2, v32, v34

    .line 450
    .line 451
    mul-long v4, v36, v30

    .line 452
    .line 453
    add-long/2addr v4, v2

    .line 454
    mul-long v28, v28, v8

    .line 455
    .line 456
    add-long v28, v28, v4

    .line 457
    .line 458
    mul-long v26, v26, v0

    .line 459
    .line 460
    add-long v26, v26, v28

    .line 461
    .line 462
    const/16 v2, 0xf

    .line 463
    .line 464
    aput-wide v26, p0, v2

    .line 465
    .line 466
    mul-long v2, v36, v34

    .line 467
    .line 468
    mul-long v32, v32, v8

    .line 469
    .line 470
    mul-long v30, v30, v0

    .line 471
    .line 472
    add-long v30, v30, v32

    .line 473
    .line 474
    add-long v30, v30, v30

    .line 475
    .line 476
    add-long v30, v30, v2

    .line 477
    .line 478
    const/16 v2, 0x10

    .line 479
    .line 480
    aput-wide v30, p0, v2

    .line 481
    .line 482
    mul-long v36, v36, v8

    .line 483
    .line 484
    mul-long v34, v34, v0

    .line 485
    .line 486
    add-long v34, v34, v36

    .line 487
    .line 488
    const/16 v2, 0x11

    .line 489
    .line 490
    aput-wide v34, p0, v2

    .line 491
    .line 492
    add-long/2addr v0, v0

    .line 493
    mul-long v0, v0, v8

    .line 494
    .line 495
    const/16 v2, 0x12

    .line 496
    .line 497
    aput-wide v0, p0, v2

    .line 498
    .line 499
    return-void
.end method

.method public static final M([B[B)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    array-length v2, p1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-byte v3, p0, v1

    .line 14
    .line 15
    aget-byte v4, p1, v1

    .line 16
    .line 17
    xor-int/2addr v3, v4

    .line 18
    or-int/2addr v2, v3

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez v2, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    return v0
.end method

.method public static N()[B
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-byte v2, v0, v1

    .line 9
    .line 10
    or-int/lit8 v2, v2, 0x7

    .line 11
    .line 12
    int-to-byte v2, v2

    .line 13
    aput-byte v2, v0, v1

    .line 14
    .line 15
    const/16 v1, 0x1f

    .line 16
    .line 17
    aget-byte v2, v0, v1

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x3f

    .line 20
    .line 21
    int-to-byte v3, v2

    .line 22
    aput-byte v3, v0, v1

    .line 23
    .line 24
    or-int/lit16 v2, v2, 0x80

    .line 25
    .line 26
    int-to-byte v2, v2

    .line 27
    aput-byte v2, v0, v1

    .line 28
    .line 29
    return-object v0
.end method

.method public static O(Ljava/lang/String;Z)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq v0, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0xb

    .line 7
    .line 8
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    array-length v0, p1

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Unable to decode "

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    :goto_1
    return-object p1
.end method

.method public static P([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    new-array v0, v1, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    const/16 v4, 0xf

    .line 11
    .line 12
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-byte v5, p0, v3

    .line 15
    .line 16
    add-int/2addr v5, v5

    .line 17
    and-int/lit16 v5, v5, 0xfe

    .line 18
    .line 19
    int-to-byte v5, v5

    .line 20
    aput-byte v5, v0, v3

    .line 21
    .line 22
    if-ge v3, v4, :cond_0

    .line 23
    .line 24
    add-int/lit8 v4, v3, 0x1

    .line 25
    .line 26
    aget-byte v4, p0, v4

    .line 27
    .line 28
    shr-int/lit8 v4, v4, 0x7

    .line 29
    .line 30
    and-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    or-int/2addr v4, v5

    .line 33
    int-to-byte v4, v4

    .line 34
    aput-byte v4, v0, v3

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    aget-byte v1, v0, v4

    .line 40
    .line 41
    aget-byte p0, p0, v2

    .line 42
    .line 43
    shr-int/lit8 p0, p0, 0x7

    .line 44
    .line 45
    and-int/lit16 p0, p0, 0x87

    .line 46
    .line 47
    int-to-byte p0, p0

    .line 48
    xor-int/2addr p0, v1

    .line 49
    int-to-byte p0, p0

    .line 50
    aput-byte p0, v0, v4

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v0, "value must be a block."

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static Q(I)I
    .locals 4

    .line 1
    add-int/lit8 v0, p0, -0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_3

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v0, v3, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "unknown curve type: "

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v2

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_2
    return v2

    .line 41
    :cond_3
    return v1
.end method

.method public static R(Lcom/google/android/gms/internal/pal/k0;[BIIILA0/w;)I
    .locals 8

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/pal/c0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/c0;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/c0;->w(Ljava/lang/Object;[BIIILA0/w;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/pal/c0;->zzf(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v7, p5, LA0/w;->c:Ljava/lang/Object;

    .line 22
    .line 23
    return p1
.end method

.method public static S(I[B)J
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p0, 0x2

    .line 15
    .line 16
    aget-byte v1, p1, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p0, p0, 0x3

    .line 24
    .line 25
    aget-byte p0, p1, p0

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    int-to-long p0, p0

    .line 33
    const-wide v0, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr p0, v0

    .line 39
    return-wide p0
.end method

.method public static T(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/r1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/google/android/gms/internal/pal/r1;

    .line 11
    .line 12
    const-string v0, "HmacSha256"

    .line 13
    .line 14
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    new-instance p0, Lcom/google/android/gms/internal/pal/r1;

    .line 26
    .line 27
    const-string v0, "HmacSha384"

    .line 28
    .line 29
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 v0, 0x5

    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    .line 40
    new-instance p0, Lcom/google/android/gms/internal/pal/r1;

    .line 41
    .line 42
    const-string v0, "HmacSha512"

    .line 43
    .line 44
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "Unrecognized HPKE KDF identifier"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static final U(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v3, "_"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static V(III)V
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    if-ltz p0, :cond_4

    .line 12
    .line 13
    if-gt p0, p2, :cond_4

    .line 14
    .line 15
    if-ltz p1, :cond_3

    .line 16
    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p2, 0x2

    .line 29
    new-array p2, p2, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object p1, p2, v1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aput-object p0, p2, p1

    .line 36
    .line 37
    const-string p0, "end index (%s) must not be less than start index (%s)"

    .line 38
    .line 39
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/pal/y4;->H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const-string p0, "end index"

    .line 45
    .line 46
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/pal/y4;->b0(IILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const-string p1, "start index"

    .line 52
    .line 53
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/pal/y4;->b0(IILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static X([B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/pal/y4;->z([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 19
    .line 20
    const-string v0, "Private key must have 32 bytes."

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static varargs Y([[B)[B
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    array-length v4, v4

    .line 10
    const v5, 0x7fffffff

    .line 11
    .line 12
    .line 13
    sub-int/2addr v5, v4

    .line 14
    if-gt v3, v5, :cond_0

    .line 15
    .line 16
    add-int/2addr v3, v4

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 21
    .line 22
    const-string v0, "exceeded size limit"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    new-array v0, v3, [B

    .line 29
    .line 30
    array-length v2, p0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_1
    if-ge v3, v2, :cond_2

    .line 34
    .line 35
    aget-object v5, p0, v3

    .line 36
    .line 37
    array-length v6, v5

    .line 38
    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v4, v6

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    return-object v0
.end method

.method public static Z(I)I
    .locals 3

    .line 1
    add-int/lit8 v0, p0, -0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 14
    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "unknown point format: "

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v2

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_2
    return v2

    .line 40
    :cond_3
    return v1
.end method

.method public static a0(Lcom/google/android/gms/internal/pal/k0;[BIILA0/w;)I
    .locals 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    aget-byte p2, p1, p2

    .line 4
    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/pal/y4;->B0(I[BILA0/w;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p2, p4, LA0/w;->b:I

    .line 12
    .line 13
    :cond_0
    move v3, v0

    .line 14
    if-ltz p2, :cond_1

    .line 15
    .line 16
    sub-int/2addr p3, v3

    .line 17
    if-gt p2, p3, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/google/android/gms/internal/pal/k0;->zze()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    add-int/2addr p2, v3

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p3

    .line 26
    move-object v2, p1

    .line 27
    move v4, p2

    .line 28
    move-object v5, p4

    .line 29
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/k0;->a(Ljava/lang/Object;[BIILA0/w;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/pal/k0;->zzf(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p4, LA0/w;->c:Ljava/lang/Object;

    .line 36
    .line 37
    return p2

    .line 38
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->e()Lcom/google/android/gms/internal/pal/L;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public static b(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    long-to-int p0, v0

    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    const-wide/32 v2, 0x1b873593

    .line 16
    .line 17
    .line 18
    mul-long v0, v0, v2

    .line 19
    .line 20
    long-to-int p0, v0

    .line 21
    return p0
.end method

.method public static b0(IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-gez p0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    aput-object p2, p1, v1

    .line 13
    .line 14
    aput-object p0, p1, v0

    .line 15
    .line 16
    const-string p0, "%s (%s) must not be negative"

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pal/y4;->H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    if-ltz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v3, v1

    .line 37
    .line 38
    aput-object p0, v3, v0

    .line 39
    .line 40
    aput-object p1, v3, v2

    .line 41
    .line 42
    const-string p0, "%s (%s) must not be greater than size (%s)"

    .line 43
    .line 44
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/pal/y4;->H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "negative size: "

    .line 52
    .line 53
    invoke-static {p2, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static c([BILA0/w;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, LA0/w;->b:I

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    sub-int/2addr v1, p1

    .line 11
    if-gt v0, v1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 16
    .line 17
    iput-object p0, p2, LA0/w;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, p2, LA0/w;->c:Ljava/lang/Object;

    .line 25
    .line 26
    add-int/2addr p1, v0

    .line 27
    return p1

    .line 28
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->e()Lcom/google/android/gms/internal/pal/L;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    throw p0

    .line 33
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->c()Lcom/google/android/gms/internal/pal/L;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method public static c0(IJ[B)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    add-int v1, p0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long/2addr v2, p1

    .line 10
    long-to-int v3, v2

    .line 11
    int-to-byte v2, v3

    .line 12
    aput-byte v2, p3, v1

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    shr-long/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static d(IJ)J
    .locals 5

    .line 1
    int-to-long v0, p0

    .line 2
    mul-long v2, p1, v0

    .line 3
    .line 4
    div-long v0, v2, v0

    .line 5
    .line 6
    cmp-long v4, v0, p1

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    return-wide v2

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v2, 0x43

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v2, "Multiplication overflows a long: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " * "

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static d0(Lcom/google/android/gms/internal/pal/j;Ljava/lang/StringBuilder;I)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/TreeSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    array-length v4, v3

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    const-string v7, "get"

    .line 28
    .line 29
    if-ge v6, v4, :cond_1

    .line 30
    .line 31
    aget-object v8, v3, v6

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    array-length v9, v9

    .line 45
    if-nez v9, :cond_0

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v2, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x3

    .line 83
    if-eqz v3, :cond_10

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-object v4, v3

    .line 103
    :goto_2
    const-string v6, "List"

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    const/4 v9, 0x1

    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    const-string v8, "OrBuilderList"

    .line 113
    .line 114
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_4

    .line 125
    .line 126
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    add-int/lit8 v8, v8, -0x4

    .line 143
    .line 144
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Ljava/lang/reflect/Method;

    .line 161
    .line 162
    if-eqz v8, :cond_4

    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    const-class v11, Ljava/util/List;

    .line 169
    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_4

    .line 175
    .line 176
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    new-array v4, v5, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {p0, v8, v4}, Lcom/google/android/gms/internal/pal/D;->e(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    const-string v6, "Map"

    .line 191
    .line 192
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_5

    .line 197
    .line 198
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-nez v6, :cond_5

    .line 203
    .line 204
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    add-int/lit8 v8, v8, -0x3

    .line 221
    .line 222
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/reflect/Method;

    .line 239
    .line 240
    if-eqz v3, :cond_5

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    const-class v10, Ljava/util/Map;

    .line 247
    .line 248
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_5

    .line 253
    .line 254
    const-class v8, Ljava/lang/Deprecated;

    .line 255
    .line 256
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-nez v8, :cond_5

    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-eqz v8, :cond_5

    .line 271
    .line 272
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    new-array v6, v5, [Ljava/lang/Object;

    .line 277
    .line 278
    invoke-static {p0, v3, v6}, Lcom/google/android/gms/internal/pal/D;->e(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {p1, p2, v4, v3}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_5
    const-string v3, "set"

    .line 288
    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Ljava/lang/reflect/Method;

    .line 298
    .line 299
    if-eqz v3, :cond_2

    .line 300
    .line 301
    const-string v3, "Bytes"

    .line 302
    .line 303
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_6

    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    add-int/lit8 v3, v3, -0x5

    .line 314
    .line 315
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_2

    .line 332
    .line 333
    :cond_6
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    check-cast v6, Ljava/lang/reflect/Method;

    .line 366
    .line 367
    const-string v8, "has"

    .line 368
    .line 369
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    check-cast v4, Ljava/lang/reflect/Method;

    .line 378
    .line 379
    if-eqz v6, :cond_2

    .line 380
    .line 381
    new-array v8, v5, [Ljava/lang/Object;

    .line 382
    .line 383
    invoke-static {p0, v6, v8}, Lcom/google/android/gms/internal/pal/D;->e(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    if-nez v4, :cond_e

    .line 388
    .line 389
    instance-of v4, v6, Ljava/lang/Boolean;

    .line 390
    .line 391
    if-eqz v4, :cond_7

    .line 392
    .line 393
    move-object v4, v6

    .line 394
    check-cast v4, Ljava/lang/Boolean;

    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_2

    .line 401
    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :cond_7
    instance-of v4, v6, Ljava/lang/Integer;

    .line 405
    .line 406
    if-eqz v4, :cond_8

    .line 407
    .line 408
    move-object v4, v6

    .line 409
    check-cast v4, Ljava/lang/Integer;

    .line 410
    .line 411
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-eqz v4, :cond_2

    .line 416
    .line 417
    goto/16 :goto_4

    .line 418
    .line 419
    :cond_8
    instance-of v4, v6, Ljava/lang/Float;

    .line 420
    .line 421
    if-eqz v4, :cond_9

    .line 422
    .line 423
    move-object v4, v6

    .line 424
    check-cast v4, Ljava/lang/Float;

    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    if-eqz v4, :cond_2

    .line 435
    .line 436
    goto :goto_4

    .line 437
    :cond_9
    instance-of v4, v6, Ljava/lang/Double;

    .line 438
    .line 439
    if-eqz v4, :cond_a

    .line 440
    .line 441
    move-object v4, v6

    .line 442
    check-cast v4, Ljava/lang/Double;

    .line 443
    .line 444
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 445
    .line 446
    .line 447
    move-result-wide v8

    .line 448
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v8

    .line 452
    const-wide/16 v10, 0x0

    .line 453
    .line 454
    cmp-long v4, v8, v10

    .line 455
    .line 456
    if-eqz v4, :cond_2

    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_a
    instance-of v4, v6, Ljava/lang/String;

    .line 460
    .line 461
    if-eqz v4, :cond_b

    .line 462
    .line 463
    const-string v4, ""

    .line 464
    .line 465
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    goto :goto_3

    .line 470
    :cond_b
    instance-of v4, v6, Lcom/google/android/gms/internal/pal/r;

    .line 471
    .line 472
    if-eqz v4, :cond_c

    .line 473
    .line 474
    sget-object v4, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 475
    .line 476
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    :goto_3
    if-nez v4, :cond_2

    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_c
    instance-of v4, v6, Lcom/google/android/gms/internal/pal/j;

    .line 484
    .line 485
    if-eqz v4, :cond_d

    .line 486
    .line 487
    move-object v4, v6

    .line 488
    check-cast v4, Lcom/google/android/gms/internal/pal/j;

    .line 489
    .line 490
    check-cast v4, Lcom/google/android/gms/internal/pal/D;

    .line 491
    .line 492
    const/4 v8, 0x6

    .line 493
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/pal/D;->l(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    check-cast v4, Lcom/google/android/gms/internal/pal/D;

    .line 498
    .line 499
    if-eq v6, v4, :cond_2

    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_d
    instance-of v4, v6, Ljava/lang/Enum;

    .line 503
    .line 504
    if-eqz v4, :cond_f

    .line 505
    .line 506
    move-object v4, v6

    .line 507
    check-cast v4, Ljava/lang/Enum;

    .line 508
    .line 509
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_2

    .line 514
    .line 515
    goto :goto_4

    .line 516
    :cond_e
    new-array v8, v5, [Ljava/lang/Object;

    .line 517
    .line 518
    invoke-static {p0, v4, v8}, Lcom/google/android/gms/internal/pal/D;->e(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    check-cast v4, Ljava/lang/Boolean;

    .line 523
    .line 524
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    if-eqz v4, :cond_2

    .line 529
    .line 530
    :cond_f
    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-static {p1, p2, v3, v6}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :cond_10
    check-cast p0, Lcom/google/android/gms/internal/pal/D;

    .line 540
    .line 541
    iget-object p0, p0, Lcom/google/android/gms/internal/pal/D;->zzc:Lcom/google/android/gms/internal/pal/o0;

    .line 542
    .line 543
    if-eqz p0, :cond_11

    .line 544
    .line 545
    :goto_5
    iget v0, p0, Lcom/google/android/gms/internal/pal/o0;->a:I

    .line 546
    .line 547
    if-ge v5, v0, :cond_11

    .line 548
    .line 549
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/o0;->b:[I

    .line 550
    .line 551
    aget v0, v0, v5

    .line 552
    .line 553
    ushr-int/2addr v0, v4

    .line 554
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/o0;->c:[Ljava/lang/Object;

    .line 559
    .line 560
    aget-object v1, v1, v5

    .line 561
    .line 562
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/pal/y4;->K(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    add-int/lit8 v5, v5, 0x1

    .line 566
    .line 567
    goto :goto_5

    .line 568
    :cond_11
    return-void
.end method

.method public static final e([B)Lcom/google/android/gms/internal/pal/m2;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/pal/m6;->p([BLcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/m6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/m6;->q()Lcom/google/android/gms/internal/pal/I;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/pal/l6;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq v2, v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x3

    .line 60
    if-eq v1, v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 64
    .line 65
    const-string v0, "keyset contains secret key material"

    .line 66
    .line 67
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/m6;->m()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_2

    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/pal/m2;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lcom/google/android/gms/internal/pal/m6;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 84
    .line 85
    const-string v0, "empty keyset"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 92
    .line 93
    const-string v0, "invalid keyset"

    .line 94
    .line 95
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public static f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, -0x1

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-gez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 86
    .line 87
    const-string p1, "Point is not on curve"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 94
    .line 95
    const-string p1, "y is out of range"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 102
    .line 103
    const-string p1, "x is out of range"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 110
    .line 111
    const-string p1, "point is at infinity"

    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public static g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/F3;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-class v0, Lcom/google/android/gms/internal/pal/F3;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/pal/F3;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/pal/x3;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 23
    .line 24
    const-string v1, "cannot find key template: "

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public static g0([J)V
    .locals 14

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    aput-wide v1, p0, v0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    const/16 v5, 0x1a

    .line 10
    .line 11
    const-wide/32 v6, 0x4000000

    .line 12
    .line 13
    .line 14
    if-ge v4, v0, :cond_0

    .line 15
    .line 16
    aget-wide v8, p0, v4

    .line 17
    .line 18
    div-long v6, v8, v6

    .line 19
    .line 20
    shl-long v10, v6, v5

    .line 21
    .line 22
    sub-long/2addr v8, v10

    .line 23
    aput-wide v8, p0, v4

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    aget-wide v8, p0, v5

    .line 28
    .line 29
    add-long/2addr v8, v6

    .line 30
    aput-wide v8, p0, v5

    .line 31
    .line 32
    const-wide/32 v6, 0x2000000

    .line 33
    .line 34
    .line 35
    div-long v6, v8, v6

    .line 36
    .line 37
    const/16 v10, 0x19

    .line 38
    .line 39
    shl-long v10, v6, v10

    .line 40
    .line 41
    sub-long/2addr v8, v10

    .line 42
    aput-wide v8, p0, v5

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x2

    .line 45
    .line 46
    aget-wide v8, p0, v4

    .line 47
    .line 48
    add-long/2addr v8, v6

    .line 49
    aput-wide v8, p0, v4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    aget-wide v8, p0, v3

    .line 53
    .line 54
    aget-wide v10, p0, v0

    .line 55
    .line 56
    const/4 v4, 0x4

    .line 57
    shl-long v12, v10, v4

    .line 58
    .line 59
    add-long/2addr v8, v12

    .line 60
    aput-wide v8, p0, v3

    .line 61
    .line 62
    add-long v12, v10, v10

    .line 63
    .line 64
    add-long/2addr v12, v8

    .line 65
    aput-wide v12, p0, v3

    .line 66
    .line 67
    add-long/2addr v12, v10

    .line 68
    aput-wide v12, p0, v3

    .line 69
    .line 70
    aput-wide v1, p0, v0

    .line 71
    .line 72
    div-long v0, v12, v6

    .line 73
    .line 74
    shl-long v4, v0, v5

    .line 75
    .line 76
    sub-long/2addr v12, v4

    .line 77
    aput-wide v12, p0, v3

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    aget-wide v3, p0, v2

    .line 81
    .line 82
    add-long/2addr v3, v0

    .line 83
    aput-wide v3, p0, v2

    .line 84
    .line 85
    return-void
.end method

.method public static h(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/d4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroidx/leanback/widget/j;

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroidx/leanback/widget/j;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance p0, Landroidx/leanback/widget/j;

    .line 24
    .line 25
    const/16 v0, 0x20

    .line 26
    .line 27
    invoke-direct {p0, v0}, Landroidx/leanback/widget/j;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 v0, 0x5

    .line 36
    if-ne p0, v0, :cond_2

    .line 37
    .line 38
    new-instance p0, Lcom/google/android/gms/internal/pal/c;

    .line 39
    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "Unrecognized HPKE AEAD identifier"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public static final h0([B[B)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1, v0, p0, p1}, Lcom/google/android/gms/internal/pal/y4;->m0(III[B[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "The lengths of x and y should match."

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static i0(Lcom/google/android/gms/internal/pal/k0;I[BIILcom/google/android/gms/internal/pal/I;LA0/w;)I
    .locals 2

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/pal/y4;->a0(Lcom/google/android/gms/internal/pal/k0;[BIILA0/w;)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p6, LA0/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :goto_0
    if-ge p3, p4, :cond_1

    .line 11
    .line 12
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v1, p6, LA0/w;->b:I

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/pal/y4;->a0(Lcom/google/android/gms/internal/pal/k0;[BIILA0/w;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iget-object v0, p6, LA0/w;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return p3
.end method

.method public static final j(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/Q6;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x21

    .line 19
    .line 20
    if-lt v2, v3, :cond_0

    .line 21
    .line 22
    const/16 v3, 0x7e

    .line 23
    .line 24
    if-gt v2, v3, :cond_0

    .line 25
    .line 26
    int-to-byte v2, v2

    .line 27
    aput-byte v2, v0, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, LY/r;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Not a printable ASCII character: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/16 v1, 0xb

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, LY/r;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/Q6;->a([B)Lcom/google/android/gms/internal/pal/Q6;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static j0([J)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    aget-wide v1, p0, v0

    .line 4
    .line 5
    const/16 v3, 0x12

    .line 6
    .line 7
    aget-wide v3, p0, v3

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    shl-long v6, v3, v5

    .line 11
    .line 12
    add-long/2addr v1, v6

    .line 13
    aput-wide v1, p0, v0

    .line 14
    .line 15
    add-long v6, v3, v3

    .line 16
    .line 17
    add-long/2addr v6, v1

    .line 18
    aput-wide v6, p0, v0

    .line 19
    .line 20
    add-long/2addr v6, v3

    .line 21
    aput-wide v6, p0, v0

    .line 22
    .line 23
    const/4 v0, 0x7

    .line 24
    aget-wide v1, p0, v0

    .line 25
    .line 26
    const/16 v3, 0x11

    .line 27
    .line 28
    aget-wide v3, p0, v3

    .line 29
    .line 30
    shl-long v6, v3, v5

    .line 31
    .line 32
    add-long/2addr v1, v6

    .line 33
    aput-wide v1, p0, v0

    .line 34
    .line 35
    add-long v6, v3, v3

    .line 36
    .line 37
    add-long/2addr v6, v1

    .line 38
    aput-wide v6, p0, v0

    .line 39
    .line 40
    add-long/2addr v6, v3

    .line 41
    aput-wide v6, p0, v0

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    aget-wide v1, p0, v0

    .line 45
    .line 46
    const/16 v3, 0x10

    .line 47
    .line 48
    aget-wide v3, p0, v3

    .line 49
    .line 50
    shl-long v6, v3, v5

    .line 51
    .line 52
    add-long/2addr v1, v6

    .line 53
    aput-wide v1, p0, v0

    .line 54
    .line 55
    add-long v6, v3, v3

    .line 56
    .line 57
    add-long/2addr v6, v1

    .line 58
    aput-wide v6, p0, v0

    .line 59
    .line 60
    add-long/2addr v6, v3

    .line 61
    aput-wide v6, p0, v0

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    aget-wide v1, p0, v0

    .line 65
    .line 66
    const/16 v3, 0xf

    .line 67
    .line 68
    aget-wide v3, p0, v3

    .line 69
    .line 70
    shl-long v6, v3, v5

    .line 71
    .line 72
    add-long/2addr v1, v6

    .line 73
    aput-wide v1, p0, v0

    .line 74
    .line 75
    add-long v6, v3, v3

    .line 76
    .line 77
    add-long/2addr v6, v1

    .line 78
    aput-wide v6, p0, v0

    .line 79
    .line 80
    add-long/2addr v6, v3

    .line 81
    aput-wide v6, p0, v0

    .line 82
    .line 83
    aget-wide v0, p0, v5

    .line 84
    .line 85
    const/16 v2, 0xe

    .line 86
    .line 87
    aget-wide v2, p0, v2

    .line 88
    .line 89
    shl-long v6, v2, v5

    .line 90
    .line 91
    add-long/2addr v0, v6

    .line 92
    aput-wide v0, p0, v5

    .line 93
    .line 94
    add-long v6, v2, v2

    .line 95
    .line 96
    add-long/2addr v6, v0

    .line 97
    aput-wide v6, p0, v5

    .line 98
    .line 99
    add-long/2addr v6, v2

    .line 100
    aput-wide v6, p0, v5

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    aget-wide v1, p0, v0

    .line 104
    .line 105
    const/16 v3, 0xd

    .line 106
    .line 107
    aget-wide v3, p0, v3

    .line 108
    .line 109
    shl-long v6, v3, v5

    .line 110
    .line 111
    add-long/2addr v1, v6

    .line 112
    aput-wide v1, p0, v0

    .line 113
    .line 114
    add-long v6, v3, v3

    .line 115
    .line 116
    add-long/2addr v6, v1

    .line 117
    aput-wide v6, p0, v0

    .line 118
    .line 119
    add-long/2addr v6, v3

    .line 120
    aput-wide v6, p0, v0

    .line 121
    .line 122
    const/4 v0, 0x2

    .line 123
    aget-wide v1, p0, v0

    .line 124
    .line 125
    const/16 v3, 0xc

    .line 126
    .line 127
    aget-wide v3, p0, v3

    .line 128
    .line 129
    shl-long v6, v3, v5

    .line 130
    .line 131
    add-long/2addr v1, v6

    .line 132
    aput-wide v1, p0, v0

    .line 133
    .line 134
    add-long v6, v3, v3

    .line 135
    .line 136
    add-long/2addr v6, v1

    .line 137
    aput-wide v6, p0, v0

    .line 138
    .line 139
    add-long/2addr v6, v3

    .line 140
    aput-wide v6, p0, v0

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    aget-wide v1, p0, v0

    .line 144
    .line 145
    const/16 v3, 0xb

    .line 146
    .line 147
    aget-wide v3, p0, v3

    .line 148
    .line 149
    shl-long v6, v3, v5

    .line 150
    .line 151
    add-long/2addr v1, v6

    .line 152
    aput-wide v1, p0, v0

    .line 153
    .line 154
    add-long v6, v3, v3

    .line 155
    .line 156
    add-long/2addr v6, v1

    .line 157
    aput-wide v6, p0, v0

    .line 158
    .line 159
    add-long/2addr v6, v3

    .line 160
    aput-wide v6, p0, v0

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    aget-wide v1, p0, v0

    .line 164
    .line 165
    const/16 v3, 0xa

    .line 166
    .line 167
    aget-wide v3, p0, v3

    .line 168
    .line 169
    shl-long v5, v3, v5

    .line 170
    .line 171
    add-long/2addr v1, v5

    .line 172
    aput-wide v1, p0, v0

    .line 173
    .line 174
    add-long v5, v3, v3

    .line 175
    .line 176
    add-long/2addr v5, v1

    .line 177
    aput-wide v5, p0, v0

    .line 178
    .line 179
    add-long/2addr v5, v3

    .line 180
    aput-wide v5, p0, v0

    .line 181
    .line 182
    return-void
.end method

.method public static k(Lcom/google/android/gms/internal/pal/f;)Lcom/google/android/gms/internal/pal/S6;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/f;->O()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/pal/h; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/pal/e;->a:Lcom/google/android/gms/internal/pal/b;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/pal/b;->I0(Lcom/google/android/gms/internal/pal/f;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/pal/h; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    check-cast p0, Lcom/google/android/gms/internal/pal/S6;

    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :catch_2
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :catch_3
    move-exception p0

    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_3

    .line 22
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/pal/T6;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/pal/T6;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/pal/T6;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :catch_4
    move-exception p0

    .line 41
    const/4 v0, 0x1

    .line 42
    :goto_3
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object p0, Lcom/google/android/gms/internal/pal/U6;->G:Lcom/google/android/gms/internal/pal/U6;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/T6;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static k0(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lcom/google/android/gms/internal/pal/r1;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/r1;->c()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static synthetic m(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "END_DOCUMENT"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "NULL"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "BOOLEAN"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "NUMBER"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "STRING"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "NAME"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "END_OBJECT"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "BEGIN_OBJECT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "END_ARRAY"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    const-string p0, "BEGIN_ARRAY"

    .line 32
    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final m0(III[B[B)[B
    .locals 4

    .line 1
    array-length v0, p3

    .line 2
    sub-int/2addr v0, p2

    .line 3
    if-lt v0, p0, :cond_1

    .line 4
    .line 5
    array-length v0, p4

    .line 6
    sub-int/2addr v0, p2

    .line 7
    if-lt v0, p1, :cond_1

    .line 8
    .line 9
    new-array v0, p2, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p2, :cond_0

    .line 13
    .line 14
    add-int v2, v1, p0

    .line 15
    .line 16
    aget-byte v2, p3, v2

    .line 17
    .line 18
    add-int v3, v1, p1

    .line 19
    .line 20
    aget-byte v3, p4, v3

    .line 21
    .line 22
    xor-int/2addr v2, v3

    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static n(Lcom/google/android/gms/internal/pal/r;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pal/r;->b(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_0

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_5
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_6
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n0([BILcom/google/android/gms/internal/pal/I;LA0/w;)I
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/pal/F;

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p3, LA0/w;->b:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget v1, p3, LA0/w;->b:I

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/pal/F;->b(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->e()Lcom/google/android/gms/internal/pal/L;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0
.end method

.method public static o([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    add-int v2, v1, v1

    .line 5
    .line 6
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-byte v3, p0, v2

    .line 13
    .line 14
    and-int/lit16 v4, v3, 0xff

    .line 15
    .line 16
    shr-int/lit8 v4, v4, 0x4

    .line 17
    .line 18
    const-string v5, "0123456789abcdef"

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v3, v3, 0xf

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static o0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-ne p1, p0, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    const-string p1, "invalid public key spec"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public static p([BZ)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq v0, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0xb

    .line 7
    .line 8
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static q(II)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ltz p0, :cond_1

    .line 5
    .line 6
    if-lt p0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v4, "index"

    .line 13
    .line 14
    if-ltz p0, :cond_3

    .line 15
    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "negative size: "

    .line 21
    .line 22
    invoke-static {v0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v5, 0x3

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v4, v5, v2

    .line 42
    .line 43
    aput-object p0, v5, v1

    .line 44
    .line 45
    aput-object p1, v5, v0

    .line 46
    .line 47
    const-string p0, "%s (%s) must be less than size (%s)"

    .line 48
    .line 49
    invoke-static {p0, v5}, Lcom/google/android/gms/internal/pal/y4;->H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-array p1, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v4, p1, v2

    .line 61
    .line 62
    aput-object p0, p1, v1

    .line 63
    .line 64
    const-string p0, "%s (%s) must not be negative"

    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pal/y4;->H(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_1
    invoke-direct {v3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v3
.end method

.method public static q0([BILA0/w;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, LA0/w;->b:I

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    iput-object p0, p2, LA0/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/gms/internal/pal/J;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p2, LA0/w;->c:Ljava/lang/Object;

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    return p1

    .line 27
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->c()Lcom/google/android/gms/internal/pal/L;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0
.end method

.method public static r(Lcom/google/android/gms/internal/pal/A1;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/y4;->P:Lcom/google/android/gms/internal/pal/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/pal/l2;->o:LO1/y;

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_4

    .line 26
    .line 27
    :cond_1
    if-nez p0, :cond_2

    .line 28
    .line 29
    :goto_0
    move-object v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-string v0, "hwvIMOeohSBrCWT4pVkQok22g/l0cZbbqOTmNbjObWwcwhLlaFMNibQmd2cIB1Vb"

    .line 32
    .line 33
    const-string v2, "24f7+wNdQe8HQwz0gPH2QIzxUp8iQNA20yBU7Dg74Sc="

    .line 34
    .line 35
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/pal/A1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    :goto_1
    if-eqz v0, :cond_b

    .line 53
    .line 54
    :cond_4
    const/4 p0, 0x1

    .line 55
    :try_start_0
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pal/y4;->O(Ljava/lang/String;Z)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->e([B)Lcom/google/android/gms/internal/pal/m2;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/pal/Z3;->a:Lcom/google/android/gms/internal/pal/x6;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/x6;->n()Lcom/google/android/gms/internal/pal/I;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_a

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/google/android/gms/internal/pal/h6;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->o()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_9

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->n()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_8

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_7

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "TinkAead"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v4, "TinkMac"

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_5

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const-string v4, "TinkHybridDecrypt"

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_5

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, "TinkHybridEncrypt"

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_5

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v4, "TinkPublicKeySign"

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const-string v4, "TinkPublicKeyVerify"

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_5

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    const-string v4, "TinkStreamingAead"

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_5

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const-string v4, "TinkDeterministicAead"

    .line 204
    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_6

    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/h6;->m()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/F3;->a(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 222
    .line 223
    const-string v0, "Missing catalogue_name."

    .line 224
    .line 225
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 230
    .line 231
    const-string v0, "Missing primitive_name."

    .line 232
    .line 233
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 238
    .line 239
    const-string v0, "Missing type_url."

    .line 240
    .line 241
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p0

    .line 245
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/pal/c4;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/m2;->d()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    check-cast p0, Lcom/google/android/gms/internal/pal/p3;

    .line 258
    .line 259
    sput-object p0, Lcom/google/android/gms/internal/pal/y4;->P:Lcom/google/android/gms/internal/pal/p3;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    .line 261
    :catch_0
    :cond_b
    return-void
.end method

.method public static r0([J[J)V
    .locals 54

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p1, v0

    .line 3
    .line 4
    mul-long v3, v1, v1

    .line 5
    .line 6
    add-long v5, v1, v1

    .line 7
    .line 8
    const/4 v7, 0x1

    .line 9
    aget-wide v8, p1, v7

    .line 10
    .line 11
    mul-long v10, v5, v8

    .line 12
    .line 13
    mul-long v12, v8, v8

    .line 14
    .line 15
    const/4 v14, 0x2

    .line 16
    aget-wide v15, p1, v14

    .line 17
    .line 18
    mul-long v17, v1, v15

    .line 19
    .line 20
    add-long v17, v17, v12

    .line 21
    .line 22
    add-long v17, v17, v17

    .line 23
    .line 24
    mul-long v12, v8, v15

    .line 25
    .line 26
    const/16 v19, 0x3

    .line 27
    .line 28
    aget-wide v20, p1, v19

    .line 29
    .line 30
    mul-long v22, v1, v20

    .line 31
    .line 32
    add-long v22, v22, v12

    .line 33
    .line 34
    add-long v22, v22, v22

    .line 35
    .line 36
    mul-long v12, v15, v15

    .line 37
    .line 38
    const-wide/16 v24, 0x4

    .line 39
    .line 40
    mul-long v26, v8, v24

    .line 41
    .line 42
    mul-long v26, v26, v20

    .line 43
    .line 44
    add-long v26, v26, v12

    .line 45
    .line 46
    const/4 v12, 0x4

    .line 47
    aget-wide v28, p1, v12

    .line 48
    .line 49
    mul-long v5, v5, v28

    .line 50
    .line 51
    add-long v5, v5, v26

    .line 52
    .line 53
    mul-long v26, v15, v20

    .line 54
    .line 55
    mul-long v30, v8, v28

    .line 56
    .line 57
    add-long v30, v30, v26

    .line 58
    .line 59
    const/4 v13, 0x5

    .line 60
    aget-wide v26, p1, v13

    .line 61
    .line 62
    mul-long v32, v1, v26

    .line 63
    .line 64
    add-long v32, v32, v30

    .line 65
    .line 66
    add-long v32, v32, v32

    .line 67
    .line 68
    const/16 v30, 0x6

    .line 69
    .line 70
    aget-wide v34, p1, v30

    .line 71
    .line 72
    mul-long v36, v20, v20

    .line 73
    .line 74
    mul-long v38, v15, v28

    .line 75
    .line 76
    add-long v38, v38, v36

    .line 77
    .line 78
    mul-long v36, v1, v34

    .line 79
    .line 80
    add-long v36, v36, v38

    .line 81
    .line 82
    add-long v38, v8, v8

    .line 83
    .line 84
    mul-long v38, v38, v26

    .line 85
    .line 86
    add-long v38, v38, v36

    .line 87
    .line 88
    add-long v38, v38, v38

    .line 89
    .line 90
    mul-long v36, v20, v28

    .line 91
    .line 92
    mul-long v40, v15, v26

    .line 93
    .line 94
    add-long v40, v40, v36

    .line 95
    .line 96
    mul-long v36, v8, v34

    .line 97
    .line 98
    add-long v36, v36, v40

    .line 99
    .line 100
    const/16 v31, 0x7

    .line 101
    .line 102
    aget-wide v40, p1, v31

    .line 103
    .line 104
    mul-long v42, v1, v40

    .line 105
    .line 106
    add-long v42, v42, v36

    .line 107
    .line 108
    add-long v42, v42, v42

    .line 109
    .line 110
    const/16 v36, 0x8

    .line 111
    .line 112
    aget-wide v44, p1, v36

    .line 113
    .line 114
    mul-long v46, v8, v40

    .line 115
    .line 116
    mul-long v48, v20, v26

    .line 117
    .line 118
    add-long v48, v48, v46

    .line 119
    .line 120
    mul-long v46, v15, v34

    .line 121
    .line 122
    mul-long v50, v1, v44

    .line 123
    .line 124
    add-long v50, v50, v46

    .line 125
    .line 126
    add-long v48, v48, v48

    .line 127
    .line 128
    add-long v48, v48, v50

    .line 129
    .line 130
    mul-long v46, v28, v28

    .line 131
    .line 132
    add-long v48, v48, v48

    .line 133
    .line 134
    add-long v48, v48, v46

    .line 135
    .line 136
    mul-long v46, v28, v26

    .line 137
    .line 138
    mul-long v50, v20, v34

    .line 139
    .line 140
    add-long v50, v50, v46

    .line 141
    .line 142
    mul-long v46, v15, v40

    .line 143
    .line 144
    add-long v46, v46, v50

    .line 145
    .line 146
    mul-long v50, v8, v44

    .line 147
    .line 148
    add-long v50, v50, v46

    .line 149
    .line 150
    const/16 v37, 0x9

    .line 151
    .line 152
    aget-wide v46, p1, v37

    .line 153
    .line 154
    mul-long v1, v1, v46

    .line 155
    .line 156
    add-long v1, v1, v50

    .line 157
    .line 158
    add-long/2addr v1, v1

    .line 159
    mul-long v50, v20, v40

    .line 160
    .line 161
    mul-long v8, v8, v46

    .line 162
    .line 163
    add-long v8, v8, v50

    .line 164
    .line 165
    mul-long v50, v26, v26

    .line 166
    .line 167
    mul-long v52, v28, v34

    .line 168
    .line 169
    add-long v52, v52, v50

    .line 170
    .line 171
    mul-long v50, v15, v44

    .line 172
    .line 173
    add-long v50, v50, v52

    .line 174
    .line 175
    add-long/2addr v8, v8

    .line 176
    add-long v8, v8, v50

    .line 177
    .line 178
    add-long/2addr v8, v8

    .line 179
    mul-long v50, v26, v34

    .line 180
    .line 181
    mul-long v52, v28, v40

    .line 182
    .line 183
    add-long v52, v52, v50

    .line 184
    .line 185
    mul-long v50, v20, v44

    .line 186
    .line 187
    add-long v50, v50, v52

    .line 188
    .line 189
    mul-long v15, v15, v46

    .line 190
    .line 191
    add-long v15, v15, v50

    .line 192
    .line 193
    add-long/2addr v15, v15

    .line 194
    mul-long v50, v26, v40

    .line 195
    .line 196
    mul-long v20, v20, v46

    .line 197
    .line 198
    add-long v20, v20, v50

    .line 199
    .line 200
    mul-long v50, v28, v44

    .line 201
    .line 202
    add-long v20, v20, v20

    .line 203
    .line 204
    add-long v20, v20, v50

    .line 205
    .line 206
    mul-long v50, v34, v34

    .line 207
    .line 208
    add-long v20, v20, v20

    .line 209
    .line 210
    add-long v20, v20, v50

    .line 211
    .line 212
    mul-long v50, v34, v40

    .line 213
    .line 214
    mul-long v52, v26, v44

    .line 215
    .line 216
    add-long v52, v52, v50

    .line 217
    .line 218
    mul-long v28, v28, v46

    .line 219
    .line 220
    add-long v28, v28, v52

    .line 221
    .line 222
    add-long v28, v28, v28

    .line 223
    .line 224
    mul-long v50, v40, v40

    .line 225
    .line 226
    mul-long v52, v34, v44

    .line 227
    .line 228
    add-long v52, v52, v50

    .line 229
    .line 230
    add-long v26, v26, v26

    .line 231
    .line 232
    mul-long v26, v26, v46

    .line 233
    .line 234
    add-long v26, v26, v52

    .line 235
    .line 236
    add-long v26, v26, v26

    .line 237
    .line 238
    mul-long v50, v40, v44

    .line 239
    .line 240
    mul-long v34, v34, v46

    .line 241
    .line 242
    add-long v34, v34, v50

    .line 243
    .line 244
    add-long v34, v34, v34

    .line 245
    .line 246
    mul-long v50, v44, v44

    .line 247
    .line 248
    mul-long v40, v40, v24

    .line 249
    .line 250
    mul-long v40, v40, v46

    .line 251
    .line 252
    add-long v40, v40, v50

    .line 253
    .line 254
    add-long v44, v44, v44

    .line 255
    .line 256
    mul-long v44, v44, v46

    .line 257
    .line 258
    add-long v24, v46, v46

    .line 259
    .line 260
    mul-long v24, v24, v46

    .line 261
    .line 262
    const/16 v13, 0x13

    .line 263
    .line 264
    new-array v13, v13, [J

    .line 265
    .line 266
    aput-wide v3, v13, v0

    .line 267
    .line 268
    aput-wide v10, v13, v7

    .line 269
    .line 270
    aput-wide v17, v13, v14

    .line 271
    .line 272
    aput-wide v22, v13, v19

    .line 273
    .line 274
    aput-wide v5, v13, v12

    .line 275
    .line 276
    const/4 v3, 0x5

    .line 277
    aput-wide v32, v13, v3

    .line 278
    .line 279
    aput-wide v38, v13, v30

    .line 280
    .line 281
    aput-wide v42, v13, v31

    .line 282
    .line 283
    aput-wide v48, v13, v36

    .line 284
    .line 285
    aput-wide v1, v13, v37

    .line 286
    .line 287
    const/16 v1, 0xa

    .line 288
    .line 289
    aput-wide v8, v13, v1

    .line 290
    .line 291
    const/16 v2, 0xb

    .line 292
    .line 293
    aput-wide v15, v13, v2

    .line 294
    .line 295
    const/16 v2, 0xc

    .line 296
    .line 297
    aput-wide v20, v13, v2

    .line 298
    .line 299
    const/16 v2, 0xd

    .line 300
    .line 301
    aput-wide v28, v13, v2

    .line 302
    .line 303
    const/16 v2, 0xe

    .line 304
    .line 305
    aput-wide v26, v13, v2

    .line 306
    .line 307
    const/16 v2, 0xf

    .line 308
    .line 309
    aput-wide v34, v13, v2

    .line 310
    .line 311
    const/16 v2, 0x10

    .line 312
    .line 313
    aput-wide v40, v13, v2

    .line 314
    .line 315
    const/16 v2, 0x11

    .line 316
    .line 317
    aput-wide v44, v13, v2

    .line 318
    .line 319
    const/16 v2, 0x12

    .line 320
    .line 321
    aput-wide v24, v13, v2

    .line 322
    .line 323
    invoke-static {v13}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 324
    .line 325
    .line 326
    invoke-static {v13}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v2, p0

    .line 330
    .line 331
    invoke-static {v13, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    .line 333
    .line 334
    return-void
.end method

.method public static s(Lcom/google/android/gms/internal/pal/G5;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/G5;->p()Lcom/google/android/gms/internal/pal/N5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->q()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->Q(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/G5;->p()Lcom/google/android/gms/internal/pal/N5;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->r()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->G(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/G5;->s()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x2

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/G5;->m()Lcom/google/android/gms/internal/pal/C5;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C5;->o()Lcom/google/android/gms/internal/pal/g6;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/pal/F3;->a:Ljava/util/logging/Logger;

    .line 43
    .line 44
    const-class v0, Lcom/google/android/gms/internal/pal/F3;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/g6;->p()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Lcom/google/android/gms/internal/pal/F3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/google/android/gms/internal/pal/v3;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/pal/v3;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/u3;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcom/google/android/gms/internal/pal/u3;->zzb()Lcom/google/android/gms/internal/pal/m2;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lcom/google/android/gms/internal/pal/F3;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/g6;->p()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/g6;->o()Lcom/google/android/gms/internal/pal/r;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/pal/m2;->a(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/e6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 97
    .line 98
    const-string v2, "newKey-operation not permitted for key type "

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/g6;->p()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_0
    monitor-exit v0

    .line 117
    throw p0

    .line 118
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 119
    .line 120
    const-string v0, "unknown EC point format"

    .line 121
    .line 122
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static s0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B
    .locals 11

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pal/y4;->o0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 24
    .line 25
    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/google/android/gms/internal/pal/J6;->i:Lcom/google/android/gms/internal/pal/J6;

    .line 29
    .line 30
    const-string v0, "EC"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/security/KeyFactory;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->g:Lcom/google/android/gms/internal/pal/J6;

    .line 43
    .line 44
    const-string v1, "ECDH"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljavax/crypto/KeyAgreement;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance v0, Ljava/math/BigInteger;

    .line 72
    .line 73
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq v2, v3, :cond_d

    .line 82
    .line 83
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-gez v2, :cond_d

    .line 92
    .line 93
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-ne v0, v1, :cond_c

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    const/4 v4, 0x0

    .line 142
    if-eqz v3, :cond_0

    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_0
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    .line 158
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/4 v3, 0x2

    .line 165
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :catch_0
    move-exception p0

    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_1
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    const/4 v3, 0x0

    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    const/4 v5, 0x0

    .line 202
    :cond_2
    :goto_0
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-nez v7, :cond_a

    .line 221
    .line 222
    invoke-virtual {v6, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 227
    .line 228
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_5

    .line 237
    .line 238
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    add-int/lit8 v5, v5, -0x2

    .line 251
    .line 252
    move-object v7, v0

    .line 253
    :goto_1
    if-ltz v5, :cond_4

    .line 254
    .line 255
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v8, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-virtual {v9, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_3

    .line 296
    .line 297
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    move-object v8, v7

    .line 326
    move-object v7, v9

    .line 327
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_4
    move-object v0, v7

    .line 331
    goto :goto_2

    .line 332
    :cond_5
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const-string v7, "p is not prime"

    .line 337
    .line 338
    if-eqz v6, :cond_7

    .line 339
    .line 340
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    add-int/2addr v5, v1

    .line 345
    const/16 v6, 0x80

    .line 346
    .line 347
    if-ne v5, v6, :cond_2

    .line 348
    .line 349
    const/16 v6, 0x50

    .line 350
    .line 351
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_6

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_6
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 360
    .line 361
    invoke-direct {p0, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0

    .line 365
    :cond_7
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 366
    .line 367
    invoke-direct {p0, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_8
    move-object v0, v3

    .line 372
    :goto_2
    if-eqz v0, :cond_a

    .line 373
    .line 374
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-nez p0, :cond_9

    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 390
    .line 391
    const-string p1, "Could not find a modular square root"

    .line 392
    .line 393
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw p0

    .line 397
    :cond_a
    :goto_3
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    .line 398
    .line 399
    .line 400
    move-result p0

    .line 401
    if-eq p0, v1, :cond_b

    .line 402
    .line 403
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 408
    .line 409
    .line 410
    :cond_b
    return-object p1

    .line 411
    :cond_c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 412
    .line 413
    const-string p1, "p must be positive"

    .line 414
    .line 415
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw p0

    .line 419
    :cond_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 420
    .line 421
    const-string p1, "shared secret is out of range"

    .line 422
    .line 423
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    :goto_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 428
    .line 429
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 430
    .line 431
    .line 432
    throw p1
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "null value in entry: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "=null"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "null key in entry: null="

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static t0([BILA0/w;)I
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, LA0/w;->b:I

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    iput-object p0, p2, LA0/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/pal/x0;->d([BII)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iput-object p0, p2, LA0/w;->c:Ljava/lang/Object;

    .line 21
    .line 22
    add-int/2addr p1, v0

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->c()Lcom/google/android/gms/internal/pal/L;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0
.end method

.method public static final u(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt v0, p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v0, p3, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    xor-int/2addr v1, v2

    .line 33
    int-to-byte v1, v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static u0(I[B)Ljava/security/interfaces/ECPrivateKey;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    .line 12
    .line 13
    invoke-direct {p1, v0, p0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/google/android/gms/internal/pal/J6;->i:Lcom/google/android/gms/internal/pal/J6;

    .line 17
    .line 18
    const-string v0, "EC"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/security/KeyFactory;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    .line 31
    .line 32
    return-object p0
.end method

.method public static v(Lm2/i;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/pal/M4;->b:Lcom/google/android/gms/internal/pal/M4;

    .line 7
    .line 8
    iget-object v1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/google/android/gms/internal/pal/A3;

    .line 47
    .line 48
    iget v4, v3, Lcom/google/android/gms/internal/pal/A3;->e:I

    .line 49
    .line 50
    add-int/lit8 v4, v4, -0x2

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-eq v4, v5, :cond_3

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    if-eq v4, v5, :cond_2

    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    if-ne v4, v5, :cond_1

    .line 60
    .line 61
    sget-object v4, Lcom/google/android/gms/internal/pal/w3;->d:Lcom/google/android/gms/internal/pal/w3;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "Unknown key status"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/pal/w3;->c:Lcom/google/android/gms/internal/pal/w3;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/pal/w3;->b:Lcom/google/android/gms/internal/pal/w3;

    .line 76
    .line 77
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/pal/N4;

    .line 78
    .line 79
    iget v6, v3, Lcom/google/android/gms/internal/pal/A3;->c:I

    .line 80
    .line 81
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/A3;->d:Lcom/google/android/gms/internal/pal/y4;

    .line 82
    .line 83
    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/pal/N4;-><init>(Lcom/google/android/gms/internal/pal/w3;ILcom/google/android/gms/internal/pal/y4;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object p0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Lcom/google/android/gms/internal/pal/A3;

    .line 93
    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    iget p0, p0, Lcom/google/android/gms/internal/pal/A3;->c:I

    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/4 p0, 0x0

    .line 104
    :goto_2
    if-eqz p0, :cond_7

    .line 105
    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v2, 0x0

    .line 115
    :goto_3
    if-ge v2, v1, :cond_6

    .line 116
    .line 117
    add-int/lit8 v3, v2, 0x1

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lcom/google/android/gms/internal/pal/N4;

    .line 124
    .line 125
    iget v2, v2, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 126
    .line 127
    if-eq v2, p0, :cond_7

    .line 128
    .line 129
    move v2, v3

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 132
    .line 133
    const-string v0, "primary key ID is not present in entries"

    .line 134
    .line 135
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :catch_0
    move-exception p0

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method public static v0([J[J[J)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-wide v1, p1, v0

    .line 7
    .line 8
    aget-wide v3, p2, v0

    .line 9
    .line 10
    sub-long/2addr v1, v3

    .line 11
    aput-wide v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static w([J[JI)V
    .locals 5

    .line 1
    neg-int p2, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v1, p0, v0

    .line 8
    .line 9
    long-to-int v2, v1

    .line 10
    aget-wide v3, p1, v0

    .line 11
    .line 12
    long-to-int v1, v3

    .line 13
    xor-int/2addr v1, v2

    .line 14
    and-int/2addr v1, p2

    .line 15
    xor-int/2addr v2, v1

    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, p0, v0

    .line 18
    .line 19
    aget-wide v2, p1, v0

    .line 20
    .line 21
    long-to-int v3, v2

    .line 22
    xor-int/2addr v1, v3

    .line 23
    int-to-long v1, v1

    .line 24
    aput-wide v1, p1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static w0(I[BIILcom/google/android/gms/internal/pal/o0;LA0/w;)I
    .locals 9

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_9

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_5

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 p3, 0x5

    .line 21
    if-ne v0, p3, :cond_0

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pal/y4;->D([BI)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/pal/L;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    and-int/lit8 v0, p0, -0x8

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/pal/o0;->b()Lcom/google/android/gms/internal/pal/o0;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    if-ge p2, p3, :cond_3

    .line 53
    .line 54
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget p2, p5, LA0/w;->b:I

    .line 59
    .line 60
    if-ne p2, v0, :cond_2

    .line 61
    .line 62
    move v1, p2

    .line 63
    move p2, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v1, p2

    .line 66
    move-object v2, p1

    .line 67
    move v4, p3

    .line 68
    move-object v5, v7

    .line 69
    move-object v6, p5

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/pal/y4;->w0(I[BIILcom/google/android/gms/internal/pal/o0;LA0/w;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    move v8, v1

    .line 75
    move v1, p2

    .line 76
    move p2, v8

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    .line 79
    .line 80
    if-ne v1, v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return p2

    .line 86
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->d()Lcom/google/android/gms/internal/pal/L;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/pal/y4;->y0([BILA0/w;)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iget p3, p5, LA0/w;->b:I

    .line 96
    .line 97
    if-ltz p3, :cond_8

    .line 98
    .line 99
    array-length p5, p1

    .line 100
    sub-int/2addr p5, p2

    .line 101
    if-gt p3, p5, :cond_7

    .line 102
    .line 103
    if-nez p3, :cond_6

    .line 104
    .line 105
    sget-object p1, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 106
    .line 107
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    add-int/2addr p2, p3

    .line 119
    return p2

    .line 120
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->e()Lcom/google/android/gms/internal/pal/L;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    throw p0

    .line 125
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->c()Lcom/google/android/gms/internal/pal/L;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    throw p0

    .line 130
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pal/y4;->H0([BI)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 p2, p2, 0x8

    .line 142
    .line 143
    return p2

    .line 144
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/pal/y4;->F0([BILA0/w;)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iget-wide p2, p5, LA0/w;->a:J

    .line 149
    .line 150
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return p1

    .line 158
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/pal/L;

    .line 159
    .line 160
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public static x([J[J[J)V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    const/16 p2, 0xa

    .line 16
    .line 17
    invoke-static {v0, p1, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static x0([J[J[J)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-wide v1, p1, v0

    .line 7
    .line 8
    aget-wide v3, p2, v0

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    aput-wide v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static y(I)Z
    .locals 6

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    :try_start_0
    const-string p0, "org.conscrypt.Conscrypt"

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v2, "isBoringSslFIPSBuild"

    .line 20
    .line 21
    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 38
    .line 39
    sget-object v2, Lcom/google/android/gms/internal/pal/U3;->a:Ljava/util/logging/Logger;

    .line 40
    .line 41
    const-string v3, "com.google.crypto.tink.config.internal.TinkFipsUtil"

    .line 42
    .line 43
    const-string v4, "checkConscryptIsAvailableAndUsesFipsBoringSsl"

    .line 44
    .line 45
    const-string v5, "Conscrypt is not available or does not support checking for FIPS build."

    .line 46
    .line 47
    invoke-virtual {v2, p0, v3, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    return v1

    .line 60
    :cond_1
    :goto_1
    return v0

    .line 61
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    return v0

    .line 68
    :cond_3
    return v1
.end method

.method public static y0([BILA0/w;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte p1, p0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p2, LA0/w;->b:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/pal/y4;->B0(I[BILA0/w;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static z([B[B)[B
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/16 v3, 0x20

    .line 7
    .line 8
    if-ne v2, v3, :cond_f

    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    new-array v4, v2, [J

    .line 13
    .line 14
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v5, 0x0

    .line 19
    aget-byte v6, v0, v5

    .line 20
    .line 21
    and-int/lit16 v6, v6, 0xf8

    .line 22
    .line 23
    int-to-byte v6, v6

    .line 24
    aput-byte v6, v0, v5

    .line 25
    .line 26
    const/16 v6, 0x1f

    .line 27
    .line 28
    aget-byte v7, v0, v6

    .line 29
    .line 30
    and-int/lit8 v7, v7, 0x7f

    .line 31
    .line 32
    int-to-byte v8, v7

    .line 33
    aput-byte v8, v0, v6

    .line 34
    .line 35
    or-int/lit8 v7, v7, 0x40

    .line 36
    .line 37
    int-to-byte v7, v7

    .line 38
    aput-byte v7, v0, v6

    .line 39
    .line 40
    array-length v7, v1

    .line 41
    if-ne v7, v3, :cond_e

    .line 42
    .line 43
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    aget-byte v8, v7, v6

    .line 48
    .line 49
    and-int/lit8 v8, v8, 0x7f

    .line 50
    .line 51
    int-to-byte v8, v8

    .line 52
    aput-byte v8, v7, v6

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_0
    const/4 v8, 0x7

    .line 56
    if-ge v6, v8, :cond_1

    .line 57
    .line 58
    sget-object v8, Lcom/google/android/gms/internal/pal/y4;->K:[[B

    .line 59
    .line 60
    aget-object v9, v8, v6

    .line 61
    .line 62
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/pal/y4;->M([B[B)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_0

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 72
    .line 73
    aget-object v1, v8, v6

    .line 74
    .line 75
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->o([B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "Banned public key: "

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    const/16 v6, 0xa

    .line 90
    .line 91
    new-array v8, v6, [J

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_1
    const/16 v10, 0x8

    .line 95
    .line 96
    if-ge v9, v6, :cond_2

    .line 97
    .line 98
    sget-object v11, Lcom/google/android/gms/internal/pal/y4;->L:[I

    .line 99
    .line 100
    aget v11, v11, v9

    .line 101
    .line 102
    aget-byte v12, v7, v11

    .line 103
    .line 104
    and-int/lit16 v12, v12, 0xff

    .line 105
    .line 106
    int-to-long v12, v12

    .line 107
    add-int/lit8 v14, v11, 0x1

    .line 108
    .line 109
    aget-byte v14, v7, v14

    .line 110
    .line 111
    and-int/lit16 v14, v14, 0xff

    .line 112
    .line 113
    int-to-long v14, v14

    .line 114
    shl-long/2addr v14, v10

    .line 115
    or-long/2addr v12, v14

    .line 116
    add-int/lit8 v10, v11, 0x2

    .line 117
    .line 118
    aget-byte v10, v7, v10

    .line 119
    .line 120
    and-int/lit16 v10, v10, 0xff

    .line 121
    .line 122
    int-to-long v14, v10

    .line 123
    const/16 v10, 0x10

    .line 124
    .line 125
    shl-long/2addr v14, v10

    .line 126
    or-long/2addr v12, v14

    .line 127
    add-int/lit8 v11, v11, 0x3

    .line 128
    .line 129
    aget-byte v10, v7, v11

    .line 130
    .line 131
    and-int/lit16 v10, v10, 0xff

    .line 132
    .line 133
    int-to-long v10, v10

    .line 134
    const/16 v14, 0x18

    .line 135
    .line 136
    shl-long/2addr v10, v14

    .line 137
    or-long/2addr v10, v12

    .line 138
    sget-object v12, Lcom/google/android/gms/internal/pal/y4;->M:[I

    .line 139
    .line 140
    aget v12, v12, v9

    .line 141
    .line 142
    shr-long/2addr v10, v12

    .line 143
    sget-object v12, Lcom/google/android/gms/internal/pal/y4;->N:[I

    .line 144
    .line 145
    and-int/lit8 v13, v9, 0x1

    .line 146
    .line 147
    aget v12, v12, v13

    .line 148
    .line 149
    int-to-long v12, v12

    .line 150
    and-long/2addr v10, v12

    .line 151
    aput-wide v10, v8, v9

    .line 152
    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const/16 v7, 0x13

    .line 157
    .line 158
    new-array v9, v7, [J

    .line 159
    .line 160
    new-array v11, v7, [J

    .line 161
    .line 162
    const-wide/16 v12, 0x1

    .line 163
    .line 164
    aput-wide v12, v11, v5

    .line 165
    .line 166
    new-array v14, v7, [J

    .line 167
    .line 168
    aput-wide v12, v14, v5

    .line 169
    .line 170
    new-array v15, v7, [J

    .line 171
    .line 172
    new-array v2, v7, [J

    .line 173
    .line 174
    new-array v10, v7, [J

    .line 175
    .line 176
    aput-wide v12, v10, v5

    .line 177
    .line 178
    new-array v3, v7, [J

    .line 179
    .line 180
    new-array v1, v7, [J

    .line 181
    .line 182
    aput-wide v12, v1, v5

    .line 183
    .line 184
    invoke-static {v8, v5, v9, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    const/16 v12, 0x20

    .line 188
    .line 189
    const/4 v13, 0x0

    .line 190
    :goto_2
    if-ge v13, v12, :cond_5

    .line 191
    .line 192
    rsub-int/lit8 v16, v13, 0x1f

    .line 193
    .line 194
    aget-byte v12, v0, v16

    .line 195
    .line 196
    and-int/lit16 v12, v12, 0xff

    .line 197
    .line 198
    const/16 v5, 0x8

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    :goto_3
    if-ge v7, v5, :cond_4

    .line 202
    .line 203
    rsub-int/lit8 v17, v7, 0x7

    .line 204
    .line 205
    shr-int v17, v12, v17

    .line 206
    .line 207
    and-int/lit8 v5, v17, 0x1

    .line 208
    .line 209
    invoke-static {v14, v9, v5}, Lcom/google/android/gms/internal/pal/y4;->w([J[JI)V

    .line 210
    .line 211
    .line 212
    invoke-static {v15, v11, v5}, Lcom/google/android/gms/internal/pal/y4;->w([J[JI)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v17, v0

    .line 216
    .line 217
    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move/from16 v16, v12

    .line 222
    .line 223
    const/16 v6, 0x13

    .line 224
    .line 225
    new-array v12, v6, [J

    .line 226
    .line 227
    move-object/from16 v18, v4

    .line 228
    .line 229
    new-array v4, v6, [J

    .line 230
    .line 231
    move/from16 v19, v13

    .line 232
    .line 233
    new-array v13, v6, [J

    .line 234
    .line 235
    move/from16 v20, v7

    .line 236
    .line 237
    new-array v7, v6, [J

    .line 238
    .line 239
    move/from16 v21, v5

    .line 240
    .line 241
    new-array v5, v6, [J

    .line 242
    .line 243
    move-object/from16 v22, v1

    .line 244
    .line 245
    new-array v1, v6, [J

    .line 246
    .line 247
    move-object/from16 v23, v12

    .line 248
    .line 249
    new-array v12, v6, [J

    .line 250
    .line 251
    invoke-static {v14, v14, v15}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 252
    .line 253
    .line 254
    invoke-static {v15, v0, v15}, Lcom/google/android/gms/internal/pal/y4;->v0([J[J[J)V

    .line 255
    .line 256
    .line 257
    const/16 v0, 0xa

    .line 258
    .line 259
    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-static {v9, v9, v11}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 264
    .line 265
    .line 266
    invoke-static {v11, v6, v11}, Lcom/google/android/gms/internal/pal/y4;->v0([J[J[J)V

    .line 267
    .line 268
    .line 269
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 270
    .line 271
    .line 272
    invoke-static {v5, v14, v11}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 273
    .line 274
    .line 275
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 276
    .line 277
    .line 278
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 279
    .line 280
    .line 281
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 282
    .line 283
    .line 284
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 285
    .line 286
    .line 287
    move-object/from16 v24, v9

    .line 288
    .line 289
    const/4 v9, 0x0

    .line 290
    invoke-static {v7, v9, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    .line 292
    .line 293
    invoke-static {v7, v7, v5}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 294
    .line 295
    .line 296
    invoke-static {v5, v6, v5}, Lcom/google/android/gms/internal/pal/y4;->v0([J[J[J)V

    .line 297
    .line 298
    .line 299
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 303
    .line 304
    .line 305
    invoke-static {v5, v1, v8}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 306
    .line 307
    .line 308
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 309
    .line 310
    .line 311
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 312
    .line 313
    .line 314
    invoke-static {v12, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    .line 316
    .line 317
    invoke-static {v5, v9, v10, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    .line 319
    .line 320
    invoke-static {v4, v14}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 321
    .line 322
    .line 323
    invoke-static {v13, v15}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 327
    .line 328
    .line 329
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 330
    .line 331
    .line 332
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 333
    .line 334
    .line 335
    invoke-static {v13, v4, v13}, Lcom/google/android/gms/internal/pal/y4;->v0([J[J[J)V

    .line 336
    .line 337
    .line 338
    const/16 v1, 0x12

    .line 339
    .line 340
    const-wide/16 v5, 0x0

    .line 341
    .line 342
    move-object/from16 v7, v23

    .line 343
    .line 344
    invoke-static {v7, v0, v1, v5, v6}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 345
    .line 346
    .line 347
    const/4 v9, 0x0

    .line 348
    :goto_4
    if-ge v9, v0, :cond_3

    .line 349
    .line 350
    aget-wide v0, v13, v9

    .line 351
    .line 352
    const-wide/32 v5, 0x1db41

    .line 353
    .line 354
    .line 355
    mul-long v0, v0, v5

    .line 356
    .line 357
    aput-wide v0, v7, v9

    .line 358
    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    const/16 v0, 0xa

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_3
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 365
    .line 366
    .line 367
    invoke-static {v7, v7, v4}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 368
    .line 369
    .line 370
    move-object/from16 v1, v22

    .line 371
    .line 372
    invoke-static {v1, v13, v7}, Lcom/google/android/gms/internal/pal/y4;->L([J[J[J)V

    .line 373
    .line 374
    .line 375
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->j0([J)V

    .line 376
    .line 377
    .line 378
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 379
    .line 380
    .line 381
    move/from16 v0, v21

    .line 382
    .line 383
    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/pal/y4;->w([J[JI)V

    .line 384
    .line 385
    .line 386
    invoke-static {v1, v10, v0}, Lcom/google/android/gms/internal/pal/y4;->w([J[JI)V

    .line 387
    .line 388
    .line 389
    add-int/lit8 v7, v20, 0x1

    .line 390
    .line 391
    move-object v9, v2

    .line 392
    move/from16 v12, v16

    .line 393
    .line 394
    move-object/from16 v0, v17

    .line 395
    .line 396
    move-object/from16 v4, v18

    .line 397
    .line 398
    move/from16 v13, v19

    .line 399
    .line 400
    move-object/from16 v2, v24

    .line 401
    .line 402
    const/16 v5, 0x8

    .line 403
    .line 404
    const/16 v6, 0xa

    .line 405
    .line 406
    move-object/from16 v25, v15

    .line 407
    .line 408
    move-object v15, v1

    .line 409
    move-object/from16 v1, v25

    .line 410
    .line 411
    move-object/from16 v26, v14

    .line 412
    .line 413
    move-object v14, v3

    .line 414
    move-object/from16 v3, v26

    .line 415
    .line 416
    move-object/from16 v27, v11

    .line 417
    .line 418
    move-object v11, v10

    .line 419
    move-object/from16 v10, v27

    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    .line 423
    :cond_4
    move-object/from16 v17, v0

    .line 424
    .line 425
    move-object/from16 v18, v4

    .line 426
    .line 427
    move-object/from16 v24, v9

    .line 428
    .line 429
    move/from16 v19, v13

    .line 430
    .line 431
    add-int/lit8 v13, v19, 0x1

    .line 432
    .line 433
    const/4 v5, 0x0

    .line 434
    const/16 v6, 0xa

    .line 435
    .line 436
    const/16 v7, 0x13

    .line 437
    .line 438
    const/16 v12, 0x20

    .line 439
    .line 440
    goto/16 :goto_2

    .line 441
    .line 442
    :cond_5
    move-object/from16 v18, v4

    .line 443
    .line 444
    const/16 v0, 0xa

    .line 445
    .line 446
    new-array v1, v0, [J

    .line 447
    .line 448
    new-array v2, v0, [J

    .line 449
    .line 450
    new-array v3, v0, [J

    .line 451
    .line 452
    new-array v4, v0, [J

    .line 453
    .line 454
    new-array v5, v0, [J

    .line 455
    .line 456
    new-array v6, v0, [J

    .line 457
    .line 458
    new-array v7, v0, [J

    .line 459
    .line 460
    new-array v10, v0, [J

    .line 461
    .line 462
    new-array v12, v0, [J

    .line 463
    .line 464
    new-array v13, v0, [J

    .line 465
    .line 466
    move-object/from16 v16, v9

    .line 467
    .line 468
    new-array v9, v0, [J

    .line 469
    .line 470
    invoke-static {v2, v15}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 471
    .line 472
    .line 473
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 474
    .line 475
    .line 476
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 477
    .line 478
    .line 479
    invoke-static {v3, v13, v15}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 480
    .line 481
    .line 482
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 483
    .line 484
    .line 485
    invoke-static {v13, v4}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 486
    .line 487
    .line 488
    invoke-static {v5, v13, v3}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 489
    .line 490
    .line 491
    invoke-static {v13, v5}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 492
    .line 493
    .line 494
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 495
    .line 496
    .line 497
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 498
    .line 499
    .line 500
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 501
    .line 502
    .line 503
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 504
    .line 505
    .line 506
    invoke-static {v6, v13, v5}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 507
    .line 508
    .line 509
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 510
    .line 511
    .line 512
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 513
    .line 514
    .line 515
    const/4 v0, 0x2

    .line 516
    const/16 v2, 0xa

    .line 517
    .line 518
    const/4 v3, 0x2

    .line 519
    :goto_5
    if-ge v3, v2, :cond_6

    .line 520
    .line 521
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 522
    .line 523
    .line 524
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 525
    .line 526
    .line 527
    add-int/lit8 v3, v3, 0x2

    .line 528
    .line 529
    const/16 v2, 0xa

    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_6
    invoke-static {v7, v9, v6}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 533
    .line 534
    .line 535
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 536
    .line 537
    .line 538
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 539
    .line 540
    .line 541
    const/4 v2, 0x2

    .line 542
    :goto_6
    const/16 v3, 0x14

    .line 543
    .line 544
    if-ge v2, v3, :cond_7

    .line 545
    .line 546
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 547
    .line 548
    .line 549
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 550
    .line 551
    .line 552
    add-int/lit8 v2, v2, 0x2

    .line 553
    .line 554
    goto :goto_6

    .line 555
    :cond_7
    invoke-static {v13, v9, v7}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 556
    .line 557
    .line 558
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 559
    .line 560
    .line 561
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 562
    .line 563
    .line 564
    const/16 v2, 0xa

    .line 565
    .line 566
    const/4 v3, 0x2

    .line 567
    :goto_7
    if-ge v3, v2, :cond_8

    .line 568
    .line 569
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 570
    .line 571
    .line 572
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 573
    .line 574
    .line 575
    add-int/lit8 v3, v3, 0x2

    .line 576
    .line 577
    const/16 v2, 0xa

    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_8
    invoke-static {v10, v13, v6}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 581
    .line 582
    .line 583
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 584
    .line 585
    .line 586
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 587
    .line 588
    .line 589
    const/4 v2, 0x2

    .line 590
    :goto_8
    const/16 v3, 0x32

    .line 591
    .line 592
    if-ge v2, v3, :cond_9

    .line 593
    .line 594
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 595
    .line 596
    .line 597
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 598
    .line 599
    .line 600
    add-int/lit8 v2, v2, 0x2

    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_9
    invoke-static {v12, v9, v10}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 604
    .line 605
    .line 606
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 607
    .line 608
    .line 609
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 610
    .line 611
    .line 612
    const/4 v2, 0x2

    .line 613
    :goto_9
    const/16 v5, 0x64

    .line 614
    .line 615
    if-ge v2, v5, :cond_a

    .line 616
    .line 617
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 618
    .line 619
    .line 620
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 621
    .line 622
    .line 623
    add-int/lit8 v2, v2, 0x2

    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_a
    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 627
    .line 628
    .line 629
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 630
    .line 631
    .line 632
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 633
    .line 634
    .line 635
    :goto_a
    if-ge v0, v3, :cond_b

    .line 636
    .line 637
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 638
    .line 639
    .line 640
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 641
    .line 642
    .line 643
    add-int/lit8 v0, v0, 0x2

    .line 644
    .line 645
    goto :goto_a

    .line 646
    :cond_b
    invoke-static {v13, v9, v10}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 647
    .line 648
    .line 649
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 650
    .line 651
    .line 652
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 653
    .line 654
    .line 655
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 656
    .line 657
    .line 658
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 659
    .line 660
    .line 661
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 662
    .line 663
    .line 664
    invoke-static {v1, v9, v4}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 665
    .line 666
    .line 667
    move-object/from16 v0, v18

    .line 668
    .line 669
    invoke-static {v0, v14, v1}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 670
    .line 671
    .line 672
    const/16 v1, 0xa

    .line 673
    .line 674
    new-array v2, v1, [J

    .line 675
    .line 676
    new-array v3, v1, [J

    .line 677
    .line 678
    const/16 v4, 0xb

    .line 679
    .line 680
    new-array v5, v4, [J

    .line 681
    .line 682
    new-array v6, v4, [J

    .line 683
    .line 684
    new-array v4, v4, [J

    .line 685
    .line 686
    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 687
    .line 688
    .line 689
    invoke-static {v3, v8, v0}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 690
    .line 691
    .line 692
    new-array v7, v1, [J

    .line 693
    .line 694
    const-wide/32 v8, 0x76d06

    .line 695
    .line 696
    .line 697
    const/4 v10, 0x0

    .line 698
    aput-wide v8, v7, v10

    .line 699
    .line 700
    invoke-static {v6, v3, v7}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 701
    .line 702
    .line 703
    invoke-static {v6, v6, v11}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 704
    .line 705
    .line 706
    move-object/from16 v9, v16

    .line 707
    .line 708
    invoke-static {v6, v6, v9}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 709
    .line 710
    .line 711
    invoke-static {v6, v6, v2}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 712
    .line 713
    .line 714
    invoke-static {v6, v6, v9}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 715
    .line 716
    .line 717
    :goto_b
    if-ge v10, v1, :cond_c

    .line 718
    .line 719
    aget-wide v7, v6, v10

    .line 720
    .line 721
    const-wide/16 v12, 0x4

    .line 722
    .line 723
    mul-long v7, v7, v12

    .line 724
    .line 725
    aput-wide v7, v5, v10

    .line 726
    .line 727
    add-int/lit8 v10, v10, 0x1

    .line 728
    .line 729
    goto :goto_b

    .line 730
    :cond_c
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->g0([J)V

    .line 731
    .line 732
    .line 733
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 734
    .line 735
    .line 736
    invoke-static {v6, v6, v11}, Lcom/google/android/gms/internal/pal/y4;->v0([J[J[J)V

    .line 737
    .line 738
    .line 739
    invoke-static {v4, v3, v9}, Lcom/google/android/gms/internal/pal/y4;->x([J[J[J)V

    .line 740
    .line 741
    .line 742
    invoke-static {v6, v6, v4}, Lcom/google/android/gms/internal/pal/y4;->x0([J[J[J)V

    .line 743
    .line 744
    .line 745
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/pal/y4;->r0([J[J)V

    .line 746
    .line 747
    .line 748
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/y4;->A0([J)[B

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->A0([J)[B

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/y4;->M([B[B)Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_d

    .line 761
    .line 762
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->A0([J)[B

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    return-object v0

    .line 767
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 768
    .line 769
    const-string v1, "Arithmetic error in curve multiplication with the public key: "

    .line 770
    .line 771
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/pal/y4;->o([B)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw v0

    .line 783
    :cond_e
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 784
    .line 785
    const-string v1, "Public key length is not 32-byte"

    .line 786
    .line 787
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    throw v0

    .line 791
    :cond_f
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 792
    .line 793
    const-string v1, "Private key must have 32 bytes."

    .line 794
    .line 795
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    throw v0
.end method

.method public static z0(Ljava/security/spec/ECParameterSpec;[B)Ljava/security/interfaces/ECPublicKey;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->I(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, 0x7

    .line 20
    .line 21
    div-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    array-length v2, p1

    .line 24
    add-int v3, v1, v1

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    add-int/2addr v3, v4

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aget-byte v3, p1, v3

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v3, v5, :cond_0

    .line 35
    .line 36
    add-int/2addr v1, v4

    .line 37
    new-instance v3, Ljava/math/BigInteger;

    .line 38
    .line 39
    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Ljava/math/BigInteger;

    .line 47
    .line 48
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v5, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/security/spec/ECPoint;

    .line 56
    .line 57
    invoke-direct {p1, v3, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    .line 64
    .line 65
    invoke-direct {v0, p1, p0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lcom/google/android/gms/internal/pal/J6;->i:Lcom/google/android/gms/internal/pal/J6;

    .line 69
    .line 70
    const-string p1, "EC"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/security/KeyFactory;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 86
    .line 87
    const-string p1, "invalid point format"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 94
    .line 95
    const-string p1, "invalid point size"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method


# virtual methods
.method public abstract E(Lcom/google/android/gms/internal/pal/j3;)Lcom/google/android/gms/internal/pal/i3;
.end method

.method public abstract W(Lcom/google/android/gms/internal/pal/i3;Lcom/google/android/gms/internal/pal/i3;)V
.end method

.method public abstract e0(Lcom/google/android/gms/internal/pal/i3;Ljava/lang/Thread;)V
.end method

.method public abstract f(Lcom/google/android/gms/internal/pal/j3;)Lcom/google/android/gms/internal/pal/d3;
.end method

.method public abstract i()Lcom/google/android/gms/internal/pal/y4;
.end method

.method public abstract l0(Lcom/google/android/gms/internal/pal/j3;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract p0(Lcom/google/android/gms/internal/pal/j3;Lcom/google/android/gms/internal/pal/i3;Lcom/google/android/gms/internal/pal/i3;)Z
.end method
