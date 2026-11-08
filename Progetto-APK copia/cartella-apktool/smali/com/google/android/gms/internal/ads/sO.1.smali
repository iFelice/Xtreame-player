.class public final Lcom/google/android/gms/internal/ads/sO;
.super Lcom/google/android/gms/internal/ads/wO;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/XK;


# static fields
.field public static final j:Lcom/google/android/gms/internal/ads/kA;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public final e:Z

.field public f:Lcom/google/android/gms/internal/ads/lO;

.field public final g:Lcom/google/android/gms/internal/ads/x3;

.field public h:Lcom/google/android/gms/internal/ads/bH;

.field public final i:Lcom/google/android/gms/internal/ads/MN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/u2;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/kA;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/kA;-><init>(Lcom/google/android/gms/internal/ads/u2;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/MN;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/MN;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget v1, Lcom/google/android/gms/internal/ads/lO;->u:I

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/kO;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/kO;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/lO;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/lO;-><init>(Lcom/google/android/gms/internal/ads/kO;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->d:Landroid/content/Context;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->i:Lcom/google/android/gms/internal/ads/MN;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 38
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/bH;->b:Lcom/google/android/gms/internal/ads/bH;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Et;->e(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sO;->e:Z

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 52
    .line 53
    const/16 v1, 0x20

    .line 54
    .line 55
    if-lt v0, v1, :cond_1

    .line 56
    .line 57
    const-string v0, "audio"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/media/AudioManager;

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/x3;

    .line 70
    .line 71
    invoke-static {p1}, LO/c;->b(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/x3;-><init>(Landroid/media/Spatializer;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v0

    .line 79
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sO;->g:Lcom/google/android/gms/internal/ads/x3;

    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 82
    .line 83
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/lO;->p:Z

    .line 84
    .line 85
    return-void
.end method

.method public static bridge synthetic e(II)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const p0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    and-int/2addr p0, p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/p0;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x4

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sO;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/sO;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_6

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 48
    .line 49
    const-string p2, "-"

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    aget-object p0, p0, v0

    .line 57
    .line 58
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    aget-object p1, p1, v0

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    return v0

    .line 72
    :cond_5
    :goto_1
    const/4 p0, 0x3

    .line 73
    return p0

    .line 74
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 75
    .line 76
    if-nez p0, :cond_7

    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_7
    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "und"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final j(ILcom/google/android/gms/internal/ads/vO;[[[ILcom/google/android/gms/internal/ads/pO;Lcom/google/android/gms/internal/ads/u2;)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    const/4 v4, 0x2

    .line 10
    if-ge v3, v4, :cond_7

    .line 11
    .line 12
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vO;->a:[I

    .line 13
    .line 14
    aget v5, v5, v3

    .line 15
    .line 16
    move/from16 v6, p0

    .line 17
    .line 18
    if-ne v6, v5, :cond_6

    .line 19
    .line 20
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vO;->b:[Lcom/google/android/gms/internal/ads/bO;

    .line 21
    .line 22
    aget-object v5, v5, v3

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 26
    .line 27
    if-ge v7, v8, :cond_6

    .line 28
    .line 29
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    aget-object v9, p2, v3

    .line 34
    .line 35
    aget-object v9, v9, v7

    .line 36
    .line 37
    move-object/from16 v10, p3

    .line 38
    .line 39
    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/pO;->a(ILcom/google/android/gms/internal/ads/Ve;[I)Lcom/google/android/gms/internal/ads/PA;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget v8, v8, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 44
    .line 45
    new-array v11, v8, [Z

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    :goto_2
    if-ge v12, v8, :cond_5

    .line 49
    .line 50
    add-int/lit8 v13, v12, 0x1

    .line 51
    .line 52
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    check-cast v14, Lcom/google/android/gms/internal/ads/qO;

    .line 57
    .line 58
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/qO;->a()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    aget-boolean v12, v11, v12

    .line 63
    .line 64
    if-nez v12, :cond_4

    .line 65
    .line 66
    if-nez v15, :cond_0

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_0
    const/4 v12, 0x1

    .line 70
    if-ne v15, v12, :cond_1

    .line 71
    .line 72
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    goto :goto_5

    .line 77
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move v2, v13

    .line 86
    :goto_3
    if-ge v2, v8, :cond_3

    .line 87
    .line 88
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v16

    .line 92
    move-object/from16 v12, v16

    .line 93
    .line 94
    check-cast v12, Lcom/google/android/gms/internal/ads/qO;

    .line 95
    .line 96
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/qO;->a()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v4, :cond_2

    .line 101
    .line 102
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/qO;->b(Lcom/google/android/gms/internal/ads/qO;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    aput-boolean v0, v11, v2

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_2
    const/4 v0, 0x1

    .line 116
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    move-object/from16 v0, p1

    .line 119
    .line 120
    const/4 v12, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    move-object v12, v15

    .line 123
    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_6
    move-object/from16 v0, p1

    .line 127
    .line 128
    move v12, v13

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    move-object/from16 v0, p1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    move-object/from16 v10, p3

    .line 136
    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    move-object/from16 v0, p1

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    return-object v0

    .line 151
    :cond_8
    move-object/from16 v0, p4

    .line 152
    .line 153
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    new-array v1, v1, [I

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-ge v2, v3, :cond_9

    .line 171
    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/google/android/gms/internal/ads/qO;

    .line 177
    .line 178
    iget v3, v3, Lcom/google/android/gms/internal/ads/qO;->I:I

    .line 179
    .line 180
    aput v3, v1, v2

    .line 181
    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_9
    const/4 v2, 0x0

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lcom/google/android/gms/internal/ads/qO;

    .line 191
    .line 192
    new-instance v2, Lcom/google/android/gms/internal/ads/tO;

    .line 193
    .line 194
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qO;->H:Lcom/google/android/gms/internal/ads/Ve;

    .line 195
    .line 196
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/tO;-><init>(Lcom/google/android/gms/internal/ads/Ve;[I)V

    .line 197
    .line 198
    .line 199
    iget v0, v0, Lcom/google/android/gms/internal/ads/qO;->G:I

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vO;[[[I[I)Landroid/util/Pair;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 13
    .line 14
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/lO;->p:Z

    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 19
    .line 20
    const/16 v7, 0x20

    .line 21
    .line 22
    if-lt v6, v7, :cond_0

    .line 23
    .line 24
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/sO;->g:Lcom/google/android/gms/internal/ads/x3;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v7}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/x3;->b(Lcom/google/android/gms/internal/ads/sO;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_18

    .line 41
    .line 42
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/4 v4, 0x2

    .line 44
    new-array v6, v4, [Lcom/google/android/gms/internal/ads/tO;

    .line 45
    .line 46
    new-instance v7, Lcom/google/android/gms/internal/ads/oL;

    .line 47
    .line 48
    const/4 v8, 0x5

    .line 49
    invoke-direct {v7, v8, v5, v3}, Lcom/google/android/gms/internal/ads/oL;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v8, Lcom/google/android/gms/internal/ads/u2;

    .line 53
    .line 54
    const/16 v9, 0x9

    .line 55
    .line 56
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v0, v2, v7, v8}, Lcom/google/android/gms/internal/ads/sO;->j(ILcom/google/android/gms/internal/ads/vO;[[[ILcom/google/android/gms/internal/ads/pO;Lcom/google/android/gms/internal/ads/u2;)Landroid/util/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v8, 0x4

    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    new-instance v10, Lcom/google/android/gms/internal/ads/MN;

    .line 67
    .line 68
    invoke-direct {v10, v5}, Lcom/google/android/gms/internal/ads/MN;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v11, Lcom/google/android/gms/internal/ads/u2;

    .line 72
    .line 73
    const/4 v12, 0x7

    .line 74
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v0, v2, v10, v11}, Lcom/google/android/gms/internal/ads/sO;->j(ILcom/google/android/gms/internal/ads/vO;[[[ILcom/google/android/gms/internal/ads/pO;Lcom/google/android/gms/internal/ads/u2;)Landroid/util/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v10, 0x0

    .line 83
    :goto_1
    const/4 v11, 0x0

    .line 84
    if-eqz v10, :cond_3

    .line 85
    .line 86
    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v7, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v10, Lcom/google/android/gms/internal/ads/tO;

    .line 97
    .line 98
    aput-object v10, v6, v7

    .line 99
    .line 100
    :cond_2
    :goto_2
    const/4 v7, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    if-eqz v7, :cond_2

    .line 103
    .line 104
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v10, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v7, Lcom/google/android/gms/internal/ads/tO;

    .line 115
    .line 116
    aput-object v7, v6, v10

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_3
    const/4 v10, 0x1

    .line 120
    if-ge v7, v4, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-ne v12, v4, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/vO;->b(I)Lcom/google/android/gms/internal/ads/bO;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    iget v12, v12, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 133
    .line 134
    if-lez v12, :cond_4

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    const/4 v7, 0x0

    .line 142
    :goto_4
    new-instance v12, Lcom/google/android/gms/internal/ads/x3;

    .line 143
    .line 144
    invoke-direct {v12, v1, v5, v7, v3}, Lcom/google/android/gms/internal/ads/x3;-><init>(Lcom/google/android/gms/internal/ads/sO;Lcom/google/android/gms/internal/ads/lO;Z[I)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/google/android/gms/internal/ads/u2;

    .line 148
    .line 149
    const/16 v7, 0x8

    .line 150
    .line 151
    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v10, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/sO;->j(ILcom/google/android/gms/internal/ads/vO;[[[ILcom/google/android/gms/internal/ads/pO;Lcom/google/android/gms/internal/ads/u2;)Landroid/util/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_6

    .line 159
    .line 160
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v7, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    iget-object v12, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v12, Lcom/google/android/gms/internal/ads/tO;

    .line 171
    .line 172
    aput-object v12, v6, v7

    .line 173
    .line 174
    :cond_6
    if-nez v3, :cond_7

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Lcom/google/android/gms/internal/ads/tO;

    .line 181
    .line 182
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/tO;->a:Lcom/google/android/gms/internal/ads/Ve;

    .line 183
    .line 184
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/tO;->b:[I

    .line 185
    .line 186
    aget v3, v3, v11

    .line 187
    .line 188
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/Ve;->a(I)Lcom/google/android/gms/internal/ads/p0;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 193
    .line 194
    :goto_5
    new-instance v7, Lcom/google/android/gms/internal/ads/oL;

    .line 195
    .line 196
    const/4 v12, 0x6

    .line 197
    invoke-direct {v7, v12, v5, v3}, Lcom/google/android/gms/internal/ads/oL;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Lcom/google/android/gms/internal/ads/u2;

    .line 201
    .line 202
    const/16 v12, 0xa

    .line 203
    .line 204
    invoke-direct {v3, v12}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const/4 v12, 0x3

    .line 208
    invoke-static {v12, v0, v2, v7, v3}, Lcom/google/android/gms/internal/ads/sO;->j(ILcom/google/android/gms/internal/ads/vO;[[[ILcom/google/android/gms/internal/ads/pO;Lcom/google/android/gms/internal/ads/u2;)Landroid/util/Pair;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-eqz v3, :cond_8

    .line 213
    .line 214
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v7, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v3, Lcom/google/android/gms/internal/ads/tO;

    .line 225
    .line 226
    aput-object v3, v6, v7

    .line 227
    .line 228
    :cond_8
    const/4 v3, 0x0

    .line 229
    :goto_6
    if-ge v3, v4, :cond_f

    .line 230
    .line 231
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eq v7, v4, :cond_e

    .line 236
    .line 237
    if-eq v7, v10, :cond_e

    .line 238
    .line 239
    if-eq v7, v12, :cond_e

    .line 240
    .line 241
    if-eq v7, v8, :cond_e

    .line 242
    .line 243
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vO;->b(I)Lcom/google/android/gms/internal/ads/bO;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    aget-object v13, v2, v3

    .line 248
    .line 249
    const/4 v14, 0x0

    .line 250
    const/4 v15, 0x0

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    const/16 v17, 0x0

    .line 254
    .line 255
    :goto_7
    iget v8, v7, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 256
    .line 257
    if-ge v14, v8, :cond_c

    .line 258
    .line 259
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    aget-object v18, v13, v14

    .line 264
    .line 265
    move-object/from16 v12, v17

    .line 266
    .line 267
    :goto_8
    iget v10, v8, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 268
    .line 269
    if-ge v11, v10, :cond_b

    .line 270
    .line 271
    aget v10, v18, v11

    .line 272
    .line 273
    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/lO;->q:Z

    .line 274
    .line 275
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/Cw;->g0(IZ)Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_a

    .line 280
    .line 281
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/Ve;->a(I)Lcom/google/android/gms/internal/ads/p0;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    new-instance v10, Lcom/google/android/gms/internal/ads/jO;

    .line 286
    .line 287
    aget v4, v18, v11

    .line 288
    .line 289
    invoke-direct {v10, v4, v9}, Lcom/google/android/gms/internal/ads/jO;-><init>(ILcom/google/android/gms/internal/ads/p0;)V

    .line 290
    .line 291
    .line 292
    if-eqz v12, :cond_9

    .line 293
    .line 294
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/jO;->a(Lcom/google/android/gms/internal/ads/jO;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-lez v4, :cond_a

    .line 299
    .line 300
    :cond_9
    move-object v15, v8

    .line 301
    move-object v12, v10

    .line 302
    move/from16 v16, v11

    .line 303
    .line 304
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 305
    .line 306
    const/4 v4, 0x2

    .line 307
    goto :goto_8

    .line 308
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 309
    .line 310
    move-object/from16 v17, v12

    .line 311
    .line 312
    const/4 v4, 0x2

    .line 313
    const/4 v10, 0x1

    .line 314
    const/4 v11, 0x0

    .line 315
    const/4 v12, 0x3

    .line 316
    goto :goto_7

    .line 317
    :cond_c
    if-nez v15, :cond_d

    .line 318
    .line 319
    const/4 v4, 0x0

    .line 320
    goto :goto_9

    .line 321
    :cond_d
    new-instance v4, Lcom/google/android/gms/internal/ads/tO;

    .line 322
    .line 323
    filled-new-array/range {v16 .. v16}, [I

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-direct {v4, v15, v7}, Lcom/google/android/gms/internal/ads/tO;-><init>(Lcom/google/android/gms/internal/ads/Ve;[I)V

    .line 328
    .line 329
    .line 330
    :goto_9
    aput-object v4, v6, v3

    .line 331
    .line 332
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 333
    .line 334
    const/4 v4, 0x2

    .line 335
    const/4 v8, 0x4

    .line 336
    const/4 v10, 0x1

    .line 337
    const/4 v11, 0x0

    .line 338
    const/4 v12, 0x3

    .line 339
    goto :goto_6

    .line 340
    :cond_f
    new-instance v2, Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 343
    .line 344
    .line 345
    const/4 v3, 0x2

    .line 346
    const/4 v4, 0x0

    .line 347
    :goto_a
    if-ge v4, v3, :cond_11

    .line 348
    .line 349
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/vO;->b(I)Lcom/google/android/gms/internal/ads/bO;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    const/4 v7, 0x0

    .line 354
    :goto_b
    iget v8, v3, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 355
    .line 356
    if-ge v7, v8, :cond_10

    .line 357
    .line 358
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/pg;->j:Lcom/google/android/gms/internal/ads/UA;

    .line 363
    .line 364
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/UA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    invoke-static {v8}, LA0/O;->I(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    add-int/lit8 v7, v7, 0x1

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 375
    .line 376
    const/4 v3, 0x2

    .line 377
    goto :goto_a

    .line 378
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vO;->c()Lcom/google/android/gms/internal/ads/bO;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const/4 v4, 0x0

    .line 383
    :goto_c
    iget v7, v3, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 384
    .line 385
    if-ge v4, v7, :cond_12

    .line 386
    .line 387
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/pg;->j:Lcom/google/android/gms/internal/ads/UA;

    .line 392
    .line 393
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/UA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-static {v7}, LA0/O;->I(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    add-int/lit8 v4, v4, 0x1

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_12
    const/4 v3, 0x2

    .line 404
    const/4 v4, 0x0

    .line 405
    :goto_d
    if-ge v4, v3, :cond_13

    .line 406
    .line 407
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    invoke-static {v7}, LA0/O;->I(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_13
    const/4 v2, 0x0

    .line 426
    :goto_e
    if-ge v2, v3, :cond_15

    .line 427
    .line 428
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/vO;->b(I)Lcom/google/android/gms/internal/ads/bO;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/lO;->c(ILcom/google/android/gms/internal/ads/bO;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-nez v4, :cond_14

    .line 437
    .line 438
    goto :goto_f

    .line 439
    :cond_14
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/lO;->a(ILcom/google/android/gms/internal/ads/bO;)V

    .line 440
    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    aput-object v3, v6, v2

    .line 444
    .line 445
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 446
    .line 447
    const/4 v3, 0x2

    .line 448
    goto :goto_e

    .line 449
    :cond_15
    const/4 v2, 0x2

    .line 450
    const/4 v3, 0x0

    .line 451
    :goto_10
    if-ge v3, v2, :cond_18

    .line 452
    .line 453
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/lO;->b(I)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-nez v4, :cond_16

    .line 462
    .line 463
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/pg;->k:Lcom/google/android/gms/internal/ads/zA;

    .line 464
    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_17

    .line 474
    .line 475
    :cond_16
    const/4 v2, 0x0

    .line 476
    goto :goto_11

    .line 477
    :cond_17
    const/4 v2, 0x0

    .line 478
    goto :goto_12

    .line 479
    :goto_11
    aput-object v2, v6, v3

    .line 480
    .line 481
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 482
    .line 483
    const/4 v2, 0x2

    .line 484
    goto :goto_10

    .line 485
    :cond_18
    const/4 v2, 0x0

    .line 486
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/sO;->i:Lcom/google/android/gms/internal/ads/MN;

    .line 487
    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/wO;->c()Lcom/google/android/gms/internal/ads/BO;

    .line 489
    .line 490
    .line 491
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/eO;->a([Lcom/google/android/gms/internal/ads/tO;)Lcom/google/android/gms/internal/ads/PA;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    const/4 v7, 0x2

    .line 496
    new-array v8, v7, [Lcom/google/android/gms/internal/ads/uO;

    .line 497
    .line 498
    const/4 v9, 0x0

    .line 499
    :goto_13
    if-ge v9, v7, :cond_1c

    .line 500
    .line 501
    aget-object v7, v6, v9

    .line 502
    .line 503
    if-eqz v7, :cond_19

    .line 504
    .line 505
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/tO;->b:[I

    .line 506
    .line 507
    array-length v11, v10

    .line 508
    if-nez v11, :cond_1a

    .line 509
    .line 510
    :cond_19
    const/4 v12, 0x1

    .line 511
    const/4 v13, 0x0

    .line 512
    goto :goto_15

    .line 513
    :cond_1a
    const/4 v12, 0x1

    .line 514
    if-ne v11, v12, :cond_1b

    .line 515
    .line 516
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/tO;->a:Lcom/google/android/gms/internal/ads/Ve;

    .line 517
    .line 518
    new-instance v11, Lcom/google/android/gms/internal/ads/eO;

    .line 519
    .line 520
    const/4 v13, 0x0

    .line 521
    aget v10, v10, v13

    .line 522
    .line 523
    invoke-direct {v11, v7, v10}, Lcom/google/android/gms/internal/ads/eO;-><init>(Lcom/google/android/gms/internal/ads/Ve;I)V

    .line 524
    .line 525
    .line 526
    goto :goto_14

    .line 527
    :cond_1b
    const/4 v13, 0x0

    .line 528
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/tO;->a:Lcom/google/android/gms/internal/ads/Ve;

    .line 529
    .line 530
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    check-cast v11, Lcom/google/android/gms/internal/ads/uA;

    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/ads/MN;->b(Lcom/google/android/gms/internal/ads/Ve;[ILcom/google/android/gms/internal/ads/uA;)Lcom/google/android/gms/internal/ads/eO;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    :goto_14
    aput-object v11, v8, v9

    .line 544
    .line 545
    :goto_15
    add-int/lit8 v9, v9, 0x1

    .line 546
    .line 547
    const/4 v7, 0x2

    .line 548
    goto :goto_13

    .line 549
    :cond_1c
    const/4 v13, 0x0

    .line 550
    new-array v3, v7, [Lcom/google/android/gms/internal/ads/YK;

    .line 551
    .line 552
    const/4 v11, 0x0

    .line 553
    :goto_16
    if-ge v11, v7, :cond_20

    .line 554
    .line 555
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/lO;->b(I)Z

    .line 560
    .line 561
    .line 562
    move-result v6

    .line 563
    if-nez v6, :cond_1d

    .line 564
    .line 565
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/pg;->k:Lcom/google/android/gms/internal/ads/zA;

    .line 566
    .line 567
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-eqz v4, :cond_1e

    .line 576
    .line 577
    :cond_1d
    move-object v4, v2

    .line 578
    goto :goto_17

    .line 579
    :cond_1e
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/vO;->a(I)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    const/4 v6, -0x2

    .line 584
    if-eq v4, v6, :cond_1f

    .line 585
    .line 586
    aget-object v4, v8, v11

    .line 587
    .line 588
    if-eqz v4, :cond_1d

    .line 589
    .line 590
    :cond_1f
    sget-object v4, Lcom/google/android/gms/internal/ads/YK;->a:Lcom/google/android/gms/internal/ads/YK;

    .line 591
    .line 592
    :goto_17
    aput-object v4, v3, v11

    .line 593
    .line 594
    add-int/lit8 v11, v11, 0x1

    .line 595
    .line 596
    goto :goto_16

    .line 597
    :cond_20
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    return-object v0

    .line 602
    :goto_18
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    throw v0
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->g:Lcom/google/android/gms/internal/ads/x3;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/x3;->J:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/x3;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Landroid/os/Handler;

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/x3;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroid/media/Spatializer;

    .line 31
    .line 32
    invoke-static {v4, v2}, LO/c;->m(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/x3;->I:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/x3;->I:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/x3;->J:Ljava/lang/Object;

    .line 45
    .line 46
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/wO;->a:Lcom/google/android/gms/internal/ads/xO;

    .line 48
    .line 49
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/wO;->b:Lcom/google/android/gms/internal/ads/BO;

    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public final h(Lcom/google/android/gms/internal/ads/kO;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/lO;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/lO;-><init>(Lcom/google/android/gms/internal/ads/kO;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/lO;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 18
    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/lO;->p:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sO;->d:Landroid/content/Context;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string p1, "DefaultTrackSelector"

    .line 31
    .line 32
    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wO;->a:Lcom/google/android/gms/internal/ads/xO;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    check-cast p1, Lcom/google/android/gms/internal/ads/BK;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 44
    .line 45
    const/16 v0, 0xa

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ts;->c(I)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v0
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/lO;->p:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sO;->e:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-lt v1, v3, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sO;->g:Lcom/google/android/gms/internal/ads/x3;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/x3;->G:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wO;->a:Lcom/google/android/gms/internal/ads/xO;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/BK;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->c(I)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1
.end method
