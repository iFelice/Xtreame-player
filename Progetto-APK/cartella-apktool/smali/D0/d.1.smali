.class public final LD0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LD0/d;

.field public static final d:Lz4/d0;

.field public static final e:Lz4/i0;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, LD0/d;

    .line 3
    .line 4
    sget-object v2, LD0/c;->d:LD0/c;

    .line 5
    .line 6
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, LD0/d;-><init>(Lz4/d0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, LD0/d;->c:LD0/d;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x5

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x6

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-array v5, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v2, v5, v6

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    aput-object v3, v5, v2

    .line 37
    .line 38
    aput-object v4, v5, v1

    .line 39
    .line 40
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v5}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, LD0/d;->d:Lz4/d0;

    .line 48
    .line 49
    new-instance v0, Lp0/C;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    invoke-direct {v0, v1}, Lp0/C;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x11

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x7

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x1e

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/16 v2, 0xa

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0x12

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v4, v1}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v1}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const/16 v2, 0xe

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2, v1}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lp0/C;->a()Lz4/i0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, LD0/d;->e:Lz4/i0;

    .line 125
    .line 126
    return-void
.end method

.method public constructor <init>(Lz4/d0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget v2, p1, Lz4/d0;->J:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, LD0/c;

    .line 22
    .line 23
    iget-object v3, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 24
    .line 25
    iget v4, v2, LD0/c;->a:I

    .line 26
    .line 27
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    iget-object v1, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, LD0/c;

    .line 49
    .line 50
    iget v1, v1, LD0/c;->b:I

    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iput p1, p0, LD0/d;->b:I

    .line 60
    .line 61
    return-void
.end method

.method public static a([II)Lz4/d0;
    .locals 4

    .line 1
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [I

    .line 9
    .line 10
    :cond_0
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget v2, p0, v1

    .line 14
    .line 15
    new-instance v3, LD0/c;

    .line 16
    .line 17
    invoke-direct {v3, v2, p1}, LD0/c;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Lm0/d;Lf/S;)LD0/d;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static/range {p0 .. p0}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/16 v4, 0x21

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    move-object/from16 v7, p3

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-lt v6, v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Lm0/d;->a()Lf/S;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v6, v6, Lf/S;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v6, Landroid/media/AudioAttributes;

    .line 32
    .line 33
    invoke-static {v3, v6}, LD0/b;->f(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v7, Lf/S;

    .line 45
    .line 46
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, LB0/q;->g(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/16 v8, 0x1c

    .line 55
    .line 56
    invoke-direct {v7, v6, v8}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const-string v8, "android.hardware.type.automotive"

    .line 62
    .line 63
    const/16 v9, 0x17

    .line 64
    .line 65
    sget-object v10, LD0/d;->e:Lz4/i0;

    .line 66
    .line 67
    const/16 v11, 0xc

    .line 68
    .line 69
    if-lt v6, v4, :cond_9

    .line 70
    .line 71
    invoke-static/range {p0 .. p0}, Lp0/M;->P(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-nez v12, :cond_3

    .line 76
    .line 77
    if-lt v6, v9, :cond_9

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v12, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_9

    .line 88
    .line 89
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lm0/d;->a()Lf/S;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Landroid/media/AudioAttributes;

    .line 96
    .line 97
    invoke-static {v3, v0}, LD0/b;->i(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, LD0/d;

    .line 102
    .line 103
    new-instance v4, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v6, Ljava/util/HashSet;

    .line 113
    .line 114
    filled-new-array {v11}, [I

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v7}, Ly4/k;->f([I)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-ge v5, v1, :cond_7

    .line 133
    .line 134
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, LC0/E;->e(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, LC0/E;->b(Landroid/media/AudioProfile;)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-ne v6, v2, :cond_4

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-static {v1}, LC0/E;->B(Landroid/media/AudioProfile;)I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-static {v6}, Lp0/M;->M(I)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-nez v7, :cond_5

    .line 158
    .line 159
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v10, v7}, Lz4/J;->containsKey(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_6

    .line 179
    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/util/Set;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, LC0/E;->A(Landroid/media/AudioProfile;)[I

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1}, Ly4/k;->f([I)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    new-instance v7, Ljava/util/HashSet;

    .line 210
    .line 211
    invoke-static {v1}, LC0/E;->A(Landroid/media/AudioProfile;)[I

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Ly4/k;->f([I)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :goto_2
    add-int/2addr v5, v2

    .line 226
    goto :goto_1

    .line 227
    :cond_7
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/util/Map$Entry;

    .line 250
    .line 251
    new-instance v4, LD0/c;

    .line 252
    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Ljava/util/Set;

    .line 268
    .line 269
    invoke-direct {v4, v5, v2}, LD0/c;-><init>(ILjava/util/Set;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_8
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {v3, v0}, LD0/d;-><init>(Lz4/d0;)V

    .line 281
    .line 282
    .line 283
    return-object v3

    .line 284
    :cond_9
    const/4 v12, 0x4

    .line 285
    if-lt v6, v9, :cond_e

    .line 286
    .line 287
    if-nez v7, :cond_a

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v3}, LB0/q;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    goto :goto_4

    .line 297
    :cond_a
    iget-object v3, v7, Lf/S;->H:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v3, Landroid/media/AudioDeviceInfo;

    .line 300
    .line 301
    new-array v7, v2, [Landroid/media/AudioDeviceInfo;

    .line 302
    .line 303
    aput-object v3, v7, v5

    .line 304
    .line 305
    move-object v3, v7

    .line 306
    :goto_4
    new-instance v7, Lz4/K;

    .line 307
    .line 308
    invoke-direct {v7, v12}, Lz4/B;-><init>(I)V

    .line 309
    .line 310
    .line 311
    const/16 v13, 0x8

    .line 312
    .line 313
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    const/4 v14, 0x7

    .line 318
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v14

    .line 322
    new-array v15, v1, [Ljava/lang/Integer;

    .line 323
    .line 324
    aput-object v13, v15, v5

    .line 325
    .line 326
    aput-object v14, v15, v2

    .line 327
    .line 328
    invoke-virtual {v7, v15}, Lz4/B;->h0([Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const/16 v13, 0x1f

    .line 332
    .line 333
    if-lt v6, v13, :cond_b

    .line 334
    .line 335
    const/16 v13, 0x1a

    .line 336
    .line 337
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    const/16 v14, 0x1b

    .line 342
    .line 343
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    new-array v15, v1, [Ljava/lang/Integer;

    .line 348
    .line 349
    aput-object v13, v15, v5

    .line 350
    .line 351
    aput-object v14, v15, v2

    .line 352
    .line 353
    invoke-virtual {v7, v15}, Lz4/B;->h0([Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    :cond_b
    if-lt v6, v4, :cond_c

    .line 357
    .line 358
    const/16 v4, 0x1e

    .line 359
    .line 360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v7, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_c
    invoke-virtual {v7}, Lz4/K;->n0()Lz4/L;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    array-length v6, v3

    .line 372
    const/4 v7, 0x0

    .line 373
    :goto_5
    if-ge v7, v6, :cond_e

    .line 374
    .line 375
    aget-object v13, v3, v7

    .line 376
    .line 377
    invoke-static {v13}, LB0/q;->A(Landroid/media/AudioDeviceInfo;)I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-virtual {v4, v13}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-eqz v13, :cond_d

    .line 390
    .line 391
    sget-object v0, LD0/d;->c:LD0/d;

    .line 392
    .line 393
    return-object v0

    .line 394
    :cond_d
    add-int/2addr v7, v2

    .line 395
    goto :goto_5

    .line 396
    :cond_e
    new-instance v3, Lz4/K;

    .line 397
    .line 398
    invoke-direct {v3, v12}, Lz4/B;-><init>(I)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v3, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .line 410
    const/16 v6, 0x1d

    .line 411
    .line 412
    const/16 v7, 0xa

    .line 413
    .line 414
    if-lt v4, v6, :cond_13

    .line 415
    .line 416
    invoke-static/range {p0 .. p0}, Lp0/M;->P(Landroid/content/Context;)Z

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    if-nez v6, :cond_f

    .line 421
    .line 422
    if-lt v4, v9, :cond_13

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_13

    .line 433
    .line 434
    :cond_f
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v10}, Lz4/J;->d()Lz4/L;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v2}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    :cond_10
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-eqz v4, :cond_12

    .line 451
    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    check-cast v4, Ljava/lang/Integer;

    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 463
    .line 464
    invoke-static {v5}, Lp0/M;->p(I)I

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-ge v6, v8, :cond_11

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_11
    new-instance v6, Landroid/media/AudioFormat$Builder;

    .line 472
    .line 473
    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-virtual {v6, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    const v6, 0xbb80

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual/range {p2 .. p2}, Lm0/d;->a()Lf/S;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    iget-object v6, v6, Lf/S;->H:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v6, Landroid/media/AudioAttributes;

    .line 502
    .line 503
    invoke-static {v5, v6}, LD0/a;->s(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_10

    .line 508
    .line 509
    invoke-virtual {v0, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    goto :goto_6

    .line 513
    :cond_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v0}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 528
    .line 529
    .line 530
    new-instance v0, LD0/d;

    .line 531
    .line 532
    invoke-virtual {v3}, Lz4/K;->n0()Lz4/L;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-static {v1}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-static {v1, v7}, LD0/d;->a([II)Lz4/d0;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-direct {v0, v1}, LD0/d;-><init>(Lz4/d0;)V

    .line 545
    .line 546
    .line 547
    return-object v0

    .line 548
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    const-string v4, "use_external_surround_sound_flag"

    .line 553
    .line 554
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    if-ne v4, v2, :cond_14

    .line 559
    .line 560
    const/4 v4, 0x1

    .line 561
    goto :goto_7

    .line 562
    :cond_14
    const/4 v4, 0x0

    .line 563
    :goto_7
    if-nez v4, :cond_15

    .line 564
    .line 565
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 566
    .line 567
    const-string v8, "Amazon"

    .line 568
    .line 569
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    if-nez v8, :cond_15

    .line 574
    .line 575
    const-string v8, "Xiaomi"

    .line 576
    .line 577
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-eqz v6, :cond_16

    .line 582
    .line 583
    :cond_15
    const-string v6, "external_surround_sound_enabled"

    .line 584
    .line 585
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-ne v1, v2, :cond_16

    .line 590
    .line 591
    sget-object v1, LD0/d;->d:Lz4/d0;

    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v3, v1}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 597
    .line 598
    .line 599
    :cond_16
    if-eqz v0, :cond_18

    .line 600
    .line 601
    if-nez v4, :cond_18

    .line 602
    .line 603
    const-string v1, "android.media.extra.AUDIO_PLUG_STATE"

    .line 604
    .line 605
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-ne v1, v2, :cond_18

    .line 610
    .line 611
    const-string v1, "android.media.extra.ENCODINGS"

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    if-eqz v1, :cond_17

    .line 618
    .line 619
    invoke-static {v1}, Ly4/k;->f([I)Ljava/util/List;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v1}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 627
    .line 628
    .line 629
    :cond_17
    new-instance v1, LD0/d;

    .line 630
    .line 631
    invoke-virtual {v3}, Lz4/K;->n0()Lz4/L;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {v2}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 640
    .line 641
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    invoke-static {v2, v0}, LD0/d;->a([II)Lz4/d0;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-direct {v1, v0}, LD0/d;-><init>(Lz4/d0;)V

    .line 650
    .line 651
    .line 652
    return-object v1

    .line 653
    :cond_18
    new-instance v0, LD0/d;

    .line 654
    .line 655
    invoke-virtual {v3}, Lz4/K;->n0()Lz4/L;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-static {v1}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-static {v1, v7}, LD0/d;->a([II)Lz4/d0;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-direct {v0, v1}, LD0/d;-><init>(Lz4/d0;)V

    .line 668
    .line 669
    .line 670
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0, p1, p2}, LD0/d;->b(Landroid/content/Context;Landroid/content/Intent;Lm0/d;Lf/S;)LD0/d;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final d(Lm0/d;Lm0/t;)Landroid/util/Pair;
    .locals 13

    .line 1
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lm0/t;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lm0/O;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, LD0/d;->e:Lz4/i0;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lz4/J;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    iget-object v1, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v4, 0x7

    .line 29
    const/4 v5, 0x6

    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    const/16 v7, 0x12

    .line 33
    .line 34
    if-ne v0, v7, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v7}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    invoke-static {v1, v6}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_3

    .line 51
    .line 52
    :cond_2
    const/16 v8, 0x1e

    .line 53
    .line 54
    if-ne v0, v8, :cond_4

    .line 55
    .line 56
    invoke-static {v1, v8}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_4

    .line 61
    .line 62
    :cond_3
    const/4 v0, 0x7

    .line 63
    :cond_4
    :goto_0
    invoke-static {v1, v0}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_5

    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, LD0/c;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v8, -0x1

    .line 80
    const/16 v9, 0xa

    .line 81
    .line 82
    iget v10, v1, LD0/c;->b:I

    .line 83
    .line 84
    iget-object v11, v1, LD0/c;->c:Lz4/L;

    .line 85
    .line 86
    iget v12, p2, Lm0/t;->G:I

    .line 87
    .line 88
    if-eq v12, v8, :cond_b

    .line 89
    .line 90
    if-ne v0, v7, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object p1, p2, Lm0/t;->o:Ljava/lang/String;

    .line 94
    .line 95
    const-string p2, "audio/vnd.dts.uhd;profile=p2"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 p2, 0x21

    .line 106
    .line 107
    if-ge p1, p2, :cond_7

    .line 108
    .line 109
    if-le v12, v9, :cond_13

    .line 110
    .line 111
    return-object v3

    .line 112
    :cond_7
    if-nez v11, :cond_8

    .line 113
    .line 114
    if-gt v12, v10, :cond_a

    .line 115
    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_8
    invoke-static {v12}, Lp0/M;->r(I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_9

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v11, p1}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_13

    .line 134
    .line 135
    :cond_a
    :goto_1
    return-object v3

    .line 136
    :cond_b
    :goto_2
    iget p2, p2, Lm0/t;->H:I

    .line 137
    .line 138
    if-eq p2, v8, :cond_c

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_c
    const p2, 0xbb80

    .line 142
    .line 143
    .line 144
    :goto_3
    if-eqz v11, :cond_d

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    .line 149
    const/16 v8, 0x1d

    .line 150
    .line 151
    const/4 v10, 0x0

    .line 152
    iget v1, v1, LD0/c;->a:I

    .line 153
    .line 154
    if-lt v7, v8, :cond_10

    .line 155
    .line 156
    :goto_4
    if-lez v9, :cond_12

    .line 157
    .line 158
    invoke-static {v9}, Lp0/M;->r(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_e

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_e
    new-instance v7, Landroid/media/AudioFormat$Builder;

    .line 166
    .line 167
    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v7, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v7, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1}, Lm0/d;->a()Lf/S;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    iget-object v7, v7, Lf/S;->H:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Landroid/media/AudioAttributes;

    .line 193
    .line 194
    invoke-static {v2, v7}, LD0/a;->s(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_f

    .line 199
    .line 200
    move v10, v9

    .line 201
    goto :goto_6

    .line 202
    :cond_f
    :goto_5
    add-int/lit8 v9, v9, -0x1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {v2, p1}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_11

    .line 218
    .line 219
    move-object p2, p1

    .line 220
    :cond_11
    check-cast p2, Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    :cond_12
    :goto_6
    move v12, v10

    .line 227
    :cond_13
    :goto_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 228
    .line 229
    const/16 p2, 0x1c

    .line 230
    .line 231
    if-gt p1, p2, :cond_15

    .line 232
    .line 233
    if-ne v12, v4, :cond_14

    .line 234
    .line 235
    const/16 v5, 0x8

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_14
    const/4 p2, 0x3

    .line 239
    if-eq v12, p2, :cond_16

    .line 240
    .line 241
    const/4 p2, 0x4

    .line 242
    if-eq v12, p2, :cond_16

    .line 243
    .line 244
    const/4 p2, 0x5

    .line 245
    if-ne v12, p2, :cond_15

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_15
    move v5, v12

    .line 249
    :cond_16
    :goto_8
    const/16 p2, 0x1a

    .line 250
    .line 251
    if-gt p1, p2, :cond_17

    .line 252
    .line 253
    const-string p1, "fugu"

    .line 254
    .line 255
    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_17

    .line 262
    .line 263
    const/4 p1, 0x1

    .line 264
    if-ne v5, p1, :cond_17

    .line 265
    .line 266
    const/4 v5, 0x2

    .line 267
    :cond_17
    invoke-static {v5}, Lp0/M;->r(I)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_18

    .line 272
    .line 273
    return-object v3

    .line 274
    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LD0/d;

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
    check-cast p1, LD0/d;

    .line 12
    .line 13
    iget-object v1, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v3, p1, LD0/d;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    if-nez v3, :cond_8

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    if-nez v3, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v5, 0x1f

    .line 30
    .line 31
    if-lt v4, v5, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v3}, LN/f;->s(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eq v4, v5, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    const/4 v5, 0x0

    .line 52
    :goto_0
    if-ge v5, v4, :cond_7

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_6

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    :goto_1
    iget v1, p0, LD0/d;->b:I

    .line 77
    .line 78
    iget p1, p1, LD0/d;->b:I

    .line 79
    .line 80
    if-ne v1, p1, :cond_8

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 84
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, LN/f;->b(Landroid/util/SparseArray;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/16 v1, 0x11

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, v1

    .line 32
    mul-int/lit8 v4, v4, 0x1f

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v4

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v1

    .line 47
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget v1, p0, LD0/d;->b:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioCapabilities[maxChannelCount="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, LD0/d;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", audioProfiles="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LD0/d;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
