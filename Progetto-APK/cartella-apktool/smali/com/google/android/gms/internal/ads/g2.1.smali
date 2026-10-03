.class public final Lcom/google/android/gms/internal/ads/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/W1;


# static fields
.field public static final M:Ljava/util/regex/Pattern;


# instance fields
.field public final G:Z

.field public final H:Lcom/google/android/gms/internal/ads/f2;

.field public final I:Lcom/google/android/gms/internal/ads/jr;

.field public J:Ljava/util/LinkedHashMap;

.field public K:F

.field public L:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/g2;->M:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, -0x800001

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/g2;->K:F

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/g2;->L:F

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g2;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/g2;->G:Z

    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [B

    .line 35
    .line 36
    new-instance v2, Ljava/lang/String;

    .line 37
    .line 38
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "Format:"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/f2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/f2;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g2;->H:Lcom/google/android/gms/internal/ads/f2;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/g2;->c(Lcom/google/android/gms/internal/ads/jr;Ljava/nio/charset/Charset;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/g2;->G:Z

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g2;->H:Lcom/google/android/gms/internal/ads/f2;

    .line 82
    .line 83
    return-void
.end method

.method public static a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v3, v1, p0

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v3, v1, p0

    .line 35
    .line 36
    if-gez v3, :cond_0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 p0, v0, -0x1

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    move-object p0, p1

    .line 71
    :goto_1
    invoke-virtual {p3, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/g2;->M:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide v2, 0xd693a400L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-long v0, v0, v2

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide/32 v4, 0x3938700

    .line 51
    .line 52
    .line 53
    mul-long v2, v2, v4

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    const-wide/32 v6, 0xf4240

    .line 65
    .line 66
    .line 67
    mul-long v4, v4, v6

    .line 68
    .line 69
    const/4 v6, 0x4

    .line 70
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    const-wide/16 v8, 0x2710

    .line 79
    .line 80
    mul-long v6, v6, v8

    .line 81
    .line 82
    add-long/2addr v0, v2

    .line 83
    add-long/2addr v0, v4

    .line 84
    add-long/2addr v0, v6

    .line 85
    return-wide v0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/jr;Ljava/nio/charset/Charset;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_24

    .line 10
    .line 11
    const-string v3, "[Script Info]"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v4, "Unsupported charset: "

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x1

    .line 22
    const/16 v8, 0x5b

    .line 23
    .line 24
    if-eqz v3, :cond_5

    .line 25
    .line 26
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    sget-object v3, Lcom/google/android/gms/internal/ads/jr;->f:Lcom/google/android/gms/internal/ads/zA;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-static {v3, v9}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/jr;->n(Ljava/nio/charset/Charset;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    shr-int/lit8 v3, v3, 0x10

    .line 60
    .line 61
    int-to-char v3, v3

    .line 62
    if-eq v3, v8, :cond_0

    .line 63
    .line 64
    :cond_2
    const-string v3, ":"

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    array-length v3, v0

    .line 71
    if-ne v3, v6, :cond_1

    .line 72
    .line 73
    aget-object v3, v0, v5

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const-string v9, "playresx"

    .line 87
    .line 88
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_4

    .line 93
    .line 94
    const-string v9, "playresy"

    .line 95
    .line 96
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :try_start_0
    aget-object v0, v0, v7

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, v1, Lcom/google/android/gms/internal/ads/g2;->L:F

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    nop

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    aget-object v0, v0, v7

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, v1, Lcom/google/android/gms/internal/ads/g2;->K:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    const-string v3, "[V4+ Styles]"

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const-string v6, "SsaParser"

    .line 138
    .line 139
    if-eqz v3, :cond_22

    .line 140
    .line 141
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_6
    const/4 v10, 0x0

    .line 147
    :goto_2
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    if-eqz v11, :cond_21

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    sget-object v0, Lcom/google/android/gms/internal/ads/jr;->f:Lcom/google/android/gms/internal/ads/zA;

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-static {v0, v12}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/jr;->n(Ljava/nio/charset/Charset;)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    shr-int/lit8 v0, v0, 0x10

    .line 181
    .line 182
    int-to-char v0, v0

    .line 183
    if-eq v0, v8, :cond_21

    .line 184
    .line 185
    :cond_7
    const-string v0, "Format:"

    .line 186
    .line 187
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const/4 v13, 0x6

    .line 192
    const/4 v14, -0x1

    .line 193
    const-string v15, ","

    .line 194
    .line 195
    if-eqz v0, :cond_13

    .line 196
    .line 197
    const/4 v0, 0x7

    .line 198
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v11, -0x1

    .line 208
    const/16 v17, -0x1

    .line 209
    .line 210
    const/16 v18, -0x1

    .line 211
    .line 212
    const/16 v19, -0x1

    .line 213
    .line 214
    const/16 v20, -0x1

    .line 215
    .line 216
    const/16 v21, -0x1

    .line 217
    .line 218
    const/16 v22, -0x1

    .line 219
    .line 220
    const/16 v23, -0x1

    .line 221
    .line 222
    const/16 v24, -0x1

    .line 223
    .line 224
    const/16 v25, -0x1

    .line 225
    .line 226
    :goto_3
    array-length v12, v0

    .line 227
    if-ge v10, v12, :cond_12

    .line 228
    .line 229
    aget-object v12, v0, v10

    .line 230
    .line 231
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    invoke-static {v12}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 243
    .line 244
    .line 245
    const/4 v13, -0x1

    .line 246
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 247
    .line 248
    .line 249
    move-result v15

    .line 250
    sparse-switch v15, :sswitch_data_0

    .line 251
    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :sswitch_0
    const-string v15, "outlinecolour"

    .line 256
    .line 257
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    if-nez v12, :cond_8

    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_8
    const/16 v13, 0x9

    .line 266
    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :sswitch_1
    const-string v15, "alignment"

    .line 270
    .line 271
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-nez v12, :cond_9

    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_9
    const/16 v13, 0x8

    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :sswitch_2
    const-string v15, "borderstyle"

    .line 284
    .line 285
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    if-nez v12, :cond_a

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_a
    const/4 v13, 0x7

    .line 293
    goto :goto_4

    .line 294
    :sswitch_3
    const-string v15, "fontsize"

    .line 295
    .line 296
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    if-nez v12, :cond_b

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_b
    const/4 v13, 0x6

    .line 304
    goto :goto_4

    .line 305
    :sswitch_4
    const-string v15, "name"

    .line 306
    .line 307
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    if-nez v12, :cond_c

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_c
    const/4 v13, 0x5

    .line 315
    goto :goto_4

    .line 316
    :sswitch_5
    const-string v15, "bold"

    .line 317
    .line 318
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    if-nez v12, :cond_d

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_d
    const/4 v13, 0x4

    .line 326
    goto :goto_4

    .line 327
    :sswitch_6
    const-string v15, "primarycolour"

    .line 328
    .line 329
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    if-nez v12, :cond_e

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_e
    const/4 v13, 0x3

    .line 337
    goto :goto_4

    .line 338
    :sswitch_7
    const-string v15, "strikeout"

    .line 339
    .line 340
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-nez v12, :cond_f

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_f
    const/4 v13, 0x2

    .line 348
    goto :goto_4

    .line 349
    :sswitch_8
    const-string v15, "underline"

    .line 350
    .line 351
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    if-nez v12, :cond_10

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_10
    const/4 v13, 0x1

    .line 359
    goto :goto_4

    .line 360
    :sswitch_9
    const-string v15, "italic"

    .line 361
    .line 362
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    if-nez v12, :cond_11

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_11
    const/4 v13, 0x0

    .line 370
    :goto_4
    packed-switch v13, :pswitch_data_0

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :pswitch_0
    move/from16 v19, v10

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :pswitch_1
    move/from16 v17, v10

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :pswitch_2
    move/from16 v25, v10

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :pswitch_3
    move/from16 v20, v10

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :pswitch_4
    move v11, v10

    .line 387
    goto :goto_5

    .line 388
    :pswitch_5
    move/from16 v21, v10

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :pswitch_6
    move/from16 v18, v10

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :pswitch_7
    move/from16 v24, v10

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :pswitch_8
    move/from16 v23, v10

    .line 398
    .line 399
    goto :goto_5

    .line 400
    :pswitch_9
    move/from16 v22, v10

    .line 401
    .line 402
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 403
    .line 404
    goto/16 :goto_3

    .line 405
    .line 406
    :cond_12
    if-eq v11, v14, :cond_6

    .line 407
    .line 408
    new-instance v0, Lu1/b;

    .line 409
    .line 410
    move-object v15, v0

    .line 411
    move/from16 v16, v11

    .line 412
    .line 413
    move/from16 v26, v12

    .line 414
    .line 415
    invoke-direct/range {v15 .. v26}, Lu1/b;-><init>(IIIIIIIIIII)V

    .line 416
    .line 417
    .line 418
    move-object v10, v0

    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :cond_13
    const-string v0, "Style:"

    .line 422
    .line 423
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v16

    .line 427
    if-eqz v16, :cond_20

    .line 428
    .line 429
    if-nez v10, :cond_14

    .line 430
    .line 431
    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 432
    .line 433
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_16

    .line 441
    .line 442
    :cond_14
    const-string v5, "Failed to parse font size: \'"

    .line 443
    .line 444
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    array-length v0, v13

    .line 460
    const-string v15, "SsaStyle"

    .line 461
    .line 462
    iget v8, v10, Lu1/b;->k:I

    .line 463
    .line 464
    const-string v9, "\'"

    .line 465
    .line 466
    if-eq v0, v8, :cond_15

    .line 467
    .line 468
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 469
    .line 470
    const-string v5, "Skipping malformed \'Style:\' line (expected "

    .line 471
    .line 472
    const-string v12, " values, found "

    .line 473
    .line 474
    const-string v13, "): \'"

    .line 475
    .line 476
    invoke-static {v5, v8, v12, v0, v13}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :goto_6
    const/4 v8, 0x0

    .line 494
    goto/16 :goto_15

    .line 495
    .line 496
    :cond_15
    :try_start_1
    new-instance v8, Lcom/google/android/gms/internal/ads/i2;

    .line 497
    .line 498
    iget v0, v10, Lu1/b;->a:I

    .line 499
    .line 500
    aget-object v0, v13, v0

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v20

    .line 506
    iget v0, v10, Lu1/b;->b:I

    .line 507
    .line 508
    if-eq v0, v14, :cond_16

    .line 509
    .line 510
    aget-object v0, v13, v0

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 516
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v19

    .line 520
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    move-result v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 524
    packed-switch v19, :pswitch_data_1

    .line 525
    .line 526
    .line 527
    goto :goto_7

    .line 528
    :pswitch_a
    move/from16 v0, v19

    .line 529
    .line 530
    goto :goto_8

    .line 531
    :catch_1
    :goto_7
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const-string v12, "Ignoring unknown alignment: "

    .line 536
    .line 537
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    const/4 v0, -0x1

    .line 545
    :goto_8
    move/from16 v21, v0

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :catch_2
    move-exception v0

    .line 549
    goto/16 :goto_14

    .line 550
    .line 551
    :cond_16
    const/16 v21, -0x1

    .line 552
    .line 553
    :goto_9
    iget v0, v10, Lu1/b;->c:I

    .line 554
    .line 555
    if-eq v0, v14, :cond_17

    .line 556
    .line 557
    aget-object v0, v13, v0

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    move-object/from16 v22, v0

    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_17
    const/16 v22, 0x0

    .line 571
    .line 572
    :goto_a
    iget v0, v10, Lu1/b;->d:I

    .line 573
    .line 574
    if-eq v0, v14, :cond_18

    .line 575
    .line 576
    aget-object v0, v13, v0

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    move-object/from16 v23, v0

    .line 587
    .line 588
    goto :goto_b

    .line 589
    :cond_18
    const/16 v23, 0x0

    .line 590
    .line 591
    :goto_b
    iget v0, v10, Lu1/b;->e:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 592
    .line 593
    if-eq v0, v14, :cond_19

    .line 594
    .line 595
    :try_start_4
    aget-object v0, v13, v0

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 601
    :try_start_5
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 602
    .line 603
    .line 604
    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 605
    move/from16 v24, v0

    .line 606
    .line 607
    goto :goto_c

    .line 608
    :catch_3
    move-exception v0

    .line 609
    move-object v7, v0

    .line 610
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    :cond_19
    const v24, -0x800001

    .line 629
    .line 630
    .line 631
    goto :goto_c

    .line 632
    :catch_4
    move-exception v0

    .line 633
    const/4 v7, 0x1

    .line 634
    goto/16 :goto_14

    .line 635
    .line 636
    :goto_c
    iget v0, v10, Lu1/b;->f:I

    .line 637
    .line 638
    if-eq v0, v14, :cond_1a

    .line 639
    .line 640
    aget-object v0, v13, v0

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->b(Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_1a

    .line 651
    .line 652
    const/16 v25, 0x1

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_1a
    const/16 v25, 0x0

    .line 656
    .line 657
    :goto_d
    iget v0, v10, Lu1/b;->g:I

    .line 658
    .line 659
    if-eq v0, v14, :cond_1b

    .line 660
    .line 661
    aget-object v0, v13, v0

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->b(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-eqz v0, :cond_1b

    .line 672
    .line 673
    const/16 v26, 0x1

    .line 674
    .line 675
    goto :goto_e

    .line 676
    :cond_1b
    const/16 v26, 0x0

    .line 677
    .line 678
    :goto_e
    iget v0, v10, Lu1/b;->h:I

    .line 679
    .line 680
    if-eq v0, v14, :cond_1c

    .line 681
    .line 682
    aget-object v0, v13, v0

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->b(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v0

    .line 692
    if-eqz v0, :cond_1c

    .line 693
    .line 694
    const/16 v27, 0x1

    .line 695
    .line 696
    goto :goto_f

    .line 697
    :cond_1c
    const/16 v27, 0x0

    .line 698
    .line 699
    :goto_f
    iget v0, v10, Lu1/b;->i:I

    .line 700
    .line 701
    if-eq v0, v14, :cond_1d

    .line 702
    .line 703
    aget-object v0, v13, v0

    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i2;->b(Ljava/lang/String;)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-eqz v0, :cond_1d

    .line 714
    .line 715
    const/16 v28, 0x1

    .line 716
    .line 717
    goto :goto_10

    .line 718
    :cond_1d
    const/16 v28, 0x0

    .line 719
    .line 720
    :goto_10
    iget v0, v10, Lu1/b;->j:I

    .line 721
    .line 722
    if-eq v0, v14, :cond_1f

    .line 723
    .line 724
    aget-object v0, v13, v0

    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 730
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    move-result v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 738
    const/4 v7, 0x1

    .line 739
    if-eq v5, v7, :cond_1e

    .line 740
    .line 741
    const/4 v12, 0x3

    .line 742
    if-eq v5, v12, :cond_1e

    .line 743
    .line 744
    goto :goto_11

    .line 745
    :cond_1e
    move/from16 v29, v5

    .line 746
    .line 747
    goto :goto_13

    .line 748
    :catch_5
    const/4 v7, 0x1

    .line 749
    :goto_11
    :try_start_8
    const-string v5, "Ignoring unknown BorderStyle: "

    .line 750
    .line 751
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    :goto_12
    const/16 v29, -0x1

    .line 763
    .line 764
    goto :goto_13

    .line 765
    :cond_1f
    const/4 v7, 0x1

    .line 766
    goto :goto_12

    .line 767
    :goto_13
    move-object/from16 v19, v8

    .line 768
    .line 769
    invoke-direct/range {v19 .. v29}, Lcom/google/android/gms/internal/ads/i2;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 770
    .line 771
    .line 772
    goto :goto_15

    .line 773
    :goto_14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    const-string v8, "Skipping malformed \'Style:\' line: \'"

    .line 776
    .line 777
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    invoke-static {v15, v5, v0}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_6

    .line 794
    .line 795
    :goto_15
    if-eqz v8, :cond_20

    .line 796
    .line 797
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/i2;->a:Ljava/lang/String;

    .line 798
    .line 799
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    :cond_20
    :goto_16
    const/4 v5, 0x0

    .line 803
    const/16 v8, 0x5b

    .line 804
    .line 805
    goto/16 :goto_2

    .line 806
    .line 807
    :cond_21
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/g2;->J:Ljava/util/LinkedHashMap;

    .line 808
    .line 809
    goto/16 :goto_0

    .line 810
    .line 811
    :cond_22
    const-string v3, "[V4 Styles]"

    .line 812
    .line 813
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    if-eqz v3, :cond_23

    .line 818
    .line 819
    const-string v0, "[V4 Styles] are not supported"

    .line 820
    .line 821
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_0

    .line 825
    .line 826
    :cond_23
    const-string v3, "[Events]"

    .line 827
    .line 828
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-eqz v0, :cond_0

    .line 833
    .line 834
    :cond_24
    return-void

    .line 835
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final d([BIILt0/d;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    add-int v4, v1, p3

    .line 16
    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/g2;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 18
    .line 19
    move-object/from16 v6, p1

    .line 20
    .line 21
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->c()Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/g2;->G:Z

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/g2;->c(Lcom/google/android/gms/internal/ads/jr;Ljava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/g2;->H:Lcom/google/android/gms/internal/ads/f2;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const/4 v8, -0x1

    .line 53
    const/4 v9, 0x1

    .line 54
    if-eqz v7, :cond_24

    .line 55
    .line 56
    const-string v10, "Format:"

    .line 57
    .line 58
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_3

    .line 63
    .line 64
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/f2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/f2;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v10, "Dialogue:"

    .line 70
    .line 71
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_4

    .line 76
    .line 77
    const-string v11, "SsaParser"

    .line 78
    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    const-string v8, "Skipping dialogue line before complete format: "

    .line 82
    .line 83
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    move-object/from16 v27, v1

    .line 91
    .line 92
    move-object/from16 v28, v4

    .line 93
    .line 94
    goto/16 :goto_17

    .line 95
    .line 96
    :cond_5
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    invoke-static {v10}, Lo3/r;->J(Z)V

    .line 101
    .line 102
    .line 103
    const/16 v10, 0x9

    .line 104
    .line 105
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const-string v12, ","

    .line 110
    .line 111
    iget v13, v4, Lcom/google/android/gms/internal/ads/f2;->e:I

    .line 112
    .line 113
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    array-length v12, v10

    .line 118
    if-eq v12, v13, :cond_6

    .line 119
    .line 120
    const-string v8, "Skipping dialogue line with fewer columns than format: "

    .line 121
    .line 122
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    iget v12, v4, Lcom/google/android/gms/internal/ads/f2;->a:I

    .line 131
    .line 132
    aget-object v12, v10, v12

    .line 133
    .line 134
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/g2;->b(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v13

    .line 138
    const-string v12, "Skipping invalid timing: "

    .line 139
    .line 140
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    cmp-long v18, v13, v16

    .line 146
    .line 147
    if-nez v18, :cond_7

    .line 148
    .line 149
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    iget v6, v4, Lcom/google/android/gms/internal/ads/f2;->b:I

    .line 158
    .line 159
    aget-object v6, v10, v6

    .line 160
    .line 161
    move-wide/from16 p2, v13

    .line 162
    .line 163
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/g2;->b(Ljava/lang/String;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v13

    .line 167
    cmp-long v6, v13, v16

    .line 168
    .line 169
    if-nez v6, :cond_8

    .line 170
    .line 171
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/g2;->J:Ljava/util/LinkedHashMap;

    .line 180
    .line 181
    if-eqz v6, :cond_9

    .line 182
    .line 183
    iget v7, v4, Lcom/google/android/gms/internal/ads/f2;->c:I

    .line 184
    .line 185
    if-eq v7, v8, :cond_9

    .line 186
    .line 187
    aget-object v7, v10, v7

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Lcom/google/android/gms/internal/ads/i2;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_9
    const/4 v6, 0x0

    .line 201
    :goto_2
    iget v7, v4, Lcom/google/android/gms/internal/ads/f2;->d:I

    .line 202
    .line 203
    aget-object v7, v10, v7

    .line 204
    .line 205
    sget-object v10, Lcom/google/android/gms/internal/ads/h2;->a:Ljava/util/regex/Pattern;

    .line 206
    .line 207
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    const/4 v12, -0x1

    .line 212
    const/16 v26, 0x0

    .line 213
    .line 214
    :goto_3
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    if-eqz v16, :cond_10

    .line 219
    .line 220
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    :try_start_0
    sget-object v15, Lcom/google/android/gms/internal/ads/h2;->b:Ljava/util/regex/Pattern;

    .line 228
    .line 229
    invoke-virtual {v15, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    sget-object v9, Lcom/google/android/gms/internal/ads/h2;->c:Ljava/util/regex/Pattern;

    .line 234
    .line 235
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    .line 240
    .line 241
    .line 242
    move-result v20

    .line 243
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 244
    .line 245
    .line 246
    move-result v21

    .line 247
    if-eqz v20, :cond_b

    .line 248
    .line 249
    if-eqz v21, :cond_a

    .line 250
    .line 251
    const-string v9, "SsaStyle.Overrides"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .line 253
    move-object/from16 v27, v1

    .line 254
    .line 255
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    .line 260
    move-object/from16 v28, v4

    .line 261
    .line 262
    :try_start_2
    const-string v4, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    .line 263
    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v4, "\'"

    .line 271
    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :goto_4
    const/4 v1, 0x1

    .line 283
    goto :goto_6

    .line 284
    :catch_0
    :goto_5
    move-object/from16 v28, v4

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :catch_1
    move-object/from16 v27, v1

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_a
    move-object/from16 v27, v1

    .line 291
    .line 292
    move-object/from16 v28, v4

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :goto_6
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const/4 v9, 0x2

    .line 300
    invoke-virtual {v15, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    goto :goto_7

    .line 305
    :cond_b
    move-object/from16 v27, v1

    .line 306
    .line 307
    move-object/from16 v28, v4

    .line 308
    .line 309
    const/4 v1, 0x1

    .line 310
    const/4 v4, 0x2

    .line 311
    if-eqz v21, :cond_c

    .line 312
    .line 313
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v15

    .line 317
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    move-object v4, v15

    .line 322
    :goto_7
    new-instance v1, Landroid/graphics/PointF;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 332
    .line 333
    .line 334
    move-result v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 335
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    invoke-direct {v1, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_c
    const/4 v1, 0x0

    .line 351
    :goto_8
    if-eqz v1, :cond_d

    .line 352
    .line 353
    move-object/from16 v26, v1

    .line 354
    .line 355
    :catch_2
    :cond_d
    :goto_9
    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/ads/h2;->d:Ljava/util/regex/Pattern;

    .line 356
    .line 357
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-eqz v4, :cond_e

    .line 366
    .line 367
    const/4 v4, 0x1

    .line 368
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v4
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 383
    packed-switch v4, :pswitch_data_0

    .line 384
    .line 385
    .line 386
    :catch_3
    :try_start_7
    const-string v4, "SsaStyle"

    .line 387
    .line 388
    const-string v8, "Ignoring unknown alignment: "

    .line 389
    .line 390
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 395
    .line 396
    .line 397
    const/4 v4, -0x1

    .line 398
    :pswitch_0
    const/4 v1, -0x1

    .line 399
    goto :goto_a

    .line 400
    :catch_4
    nop

    .line 401
    goto :goto_b

    .line 402
    :cond_e
    const/4 v1, -0x1

    .line 403
    const/4 v4, -0x1

    .line 404
    :goto_a
    if-eq v4, v1, :cond_f

    .line 405
    .line 406
    move v12, v4

    .line 407
    :cond_f
    :goto_b
    move-object/from16 v1, v27

    .line 408
    .line 409
    move-object/from16 v4, v28

    .line 410
    .line 411
    const/4 v8, -0x1

    .line 412
    const/4 v9, 0x1

    .line 413
    goto/16 :goto_3

    .line 414
    .line 415
    :cond_10
    move-object/from16 v27, v1

    .line 416
    .line 417
    move-object/from16 v28, v4

    .line 418
    .line 419
    new-instance v1, Lcom/google/android/gms/internal/ads/h2;

    .line 420
    .line 421
    sget-object v1, Lcom/google/android/gms/internal/ads/h2;->a:Ljava/util/regex/Pattern;

    .line 422
    .line 423
    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    const-string v4, ""

    .line 428
    .line 429
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    const-string v4, "\\N"

    .line 434
    .line 435
    const-string v7, "\n"

    .line 436
    .line 437
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    const-string v4, "\\n"

    .line 442
    .line 443
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    const-string v4, "\\h"

    .line 448
    .line 449
    const-string v7, "\u00a0"

    .line 450
    .line 451
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    iget v4, v0, Lcom/google/android/gms/internal/ads/g2;->K:F

    .line 456
    .line 457
    iget v7, v0, Lcom/google/android/gms/internal/ads/g2;->L:F

    .line 458
    .line 459
    new-instance v8, Landroid/text/SpannableString;

    .line 460
    .line 461
    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    const v23, -0x800001

    .line 465
    .line 466
    .line 467
    const/high16 v24, -0x80000000

    .line 468
    .line 469
    if-eqz v6, :cond_19

    .line 470
    .line 471
    const/16 v9, 0x21

    .line 472
    .line 473
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/i2;->c:Ljava/lang/Integer;

    .line 474
    .line 475
    if-eqz v10, :cond_11

    .line 476
    .line 477
    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    .line 478
    .line 479
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    invoke-direct {v15, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    const/4 v1, 0x0

    .line 491
    invoke-virtual {v8, v15, v1, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 492
    .line 493
    .line 494
    :cond_11
    iget v1, v6, Lcom/google/android/gms/internal/ads/i2;->j:I

    .line 495
    .line 496
    const/4 v10, 0x3

    .line 497
    if-ne v1, v10, :cond_12

    .line 498
    .line 499
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/i2;->d:Ljava/lang/Integer;

    .line 500
    .line 501
    if-eqz v1, :cond_12

    .line 502
    .line 503
    new-instance v15, Landroid/text/style/BackgroundColorSpan;

    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    invoke-direct {v15, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    const/4 v10, 0x0

    .line 517
    invoke-virtual {v8, v15, v10, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 518
    .line 519
    .line 520
    :cond_12
    iget v1, v6, Lcom/google/android/gms/internal/ads/i2;->e:F

    .line 521
    .line 522
    const v10, -0x800001

    .line 523
    .line 524
    .line 525
    cmpl-float v15, v1, v10

    .line 526
    .line 527
    if-eqz v15, :cond_13

    .line 528
    .line 529
    cmpl-float v15, v7, v10

    .line 530
    .line 531
    if-eqz v15, :cond_13

    .line 532
    .line 533
    div-float/2addr v1, v7

    .line 534
    const/4 v10, 0x1

    .line 535
    goto :goto_c

    .line 536
    :cond_13
    const v1, -0x800001

    .line 537
    .line 538
    .line 539
    const/high16 v10, -0x80000000

    .line 540
    .line 541
    :goto_c
    iget-boolean v15, v6, Lcom/google/android/gms/internal/ads/i2;->f:Z

    .line 542
    .line 543
    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/i2;->g:Z

    .line 544
    .line 545
    if-eqz v15, :cond_15

    .line 546
    .line 547
    if-eqz v9, :cond_14

    .line 548
    .line 549
    new-instance v9, Landroid/text/style/StyleSpan;

    .line 550
    .line 551
    const/4 v15, 0x3

    .line 552
    invoke-direct {v9, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 556
    .line 557
    .line 558
    move-result v15

    .line 559
    move-wide/from16 v29, v13

    .line 560
    .line 561
    const/16 v13, 0x21

    .line 562
    .line 563
    const/4 v14, 0x0

    .line 564
    invoke-virtual {v8, v9, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 565
    .line 566
    .line 567
    goto :goto_d

    .line 568
    :cond_14
    move-wide/from16 v29, v13

    .line 569
    .line 570
    const/16 v13, 0x21

    .line 571
    .line 572
    const/4 v14, 0x0

    .line 573
    new-instance v9, Landroid/text/style/StyleSpan;

    .line 574
    .line 575
    const/4 v15, 0x1

    .line 576
    invoke-direct {v9, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 580
    .line 581
    .line 582
    move-result v15

    .line 583
    invoke-virtual {v8, v9, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_15
    move-wide/from16 v29, v13

    .line 588
    .line 589
    const/16 v13, 0x21

    .line 590
    .line 591
    const/4 v14, 0x0

    .line 592
    if-eqz v9, :cond_16

    .line 593
    .line 594
    new-instance v9, Landroid/text/style/StyleSpan;

    .line 595
    .line 596
    const/4 v15, 0x2

    .line 597
    invoke-direct {v9, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 601
    .line 602
    .line 603
    move-result v15

    .line 604
    invoke-virtual {v8, v9, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 605
    .line 606
    .line 607
    :cond_16
    :goto_d
    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/i2;->h:Z

    .line 608
    .line 609
    if-eqz v9, :cond_17

    .line 610
    .line 611
    new-instance v9, Landroid/text/style/UnderlineSpan;

    .line 612
    .line 613
    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 617
    .line 618
    .line 619
    move-result v15

    .line 620
    invoke-virtual {v8, v9, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 621
    .line 622
    .line 623
    :cond_17
    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/i2;->i:Z

    .line 624
    .line 625
    if-eqz v9, :cond_18

    .line 626
    .line 627
    new-instance v9, Landroid/text/style/StrikethroughSpan;

    .line 628
    .line 629
    invoke-direct {v9}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    .line 633
    .line 634
    .line 635
    move-result v15

    .line 636
    invoke-virtual {v8, v9, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 637
    .line 638
    .line 639
    :cond_18
    move/from16 v21, v1

    .line 640
    .line 641
    move v1, v10

    .line 642
    const/4 v9, -0x1

    .line 643
    goto :goto_e

    .line 644
    :cond_19
    move-wide/from16 v29, v13

    .line 645
    .line 646
    const/4 v14, 0x0

    .line 647
    const/high16 v1, -0x80000000

    .line 648
    .line 649
    const/4 v9, -0x1

    .line 650
    const v21, -0x800001

    .line 651
    .line 652
    .line 653
    :goto_e
    if-eq v12, v9, :cond_1a

    .line 654
    .line 655
    goto :goto_f

    .line 656
    :cond_1a
    if-eqz v6, :cond_1b

    .line 657
    .line 658
    iget v6, v6, Lcom/google/android/gms/internal/ads/i2;->b:I

    .line 659
    .line 660
    move v12, v6

    .line 661
    goto :goto_f

    .line 662
    :cond_1b
    const/4 v12, -0x1

    .line 663
    :goto_f
    const-string v6, "Unknown alignment: "

    .line 664
    .line 665
    packed-switch v12, :pswitch_data_1

    .line 666
    .line 667
    .line 668
    :pswitch_1
    invoke-static {v6, v12, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :pswitch_2
    const/4 v9, 0x0

    .line 672
    goto :goto_10

    .line 673
    :pswitch_3
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 674
    .line 675
    goto :goto_10

    .line 676
    :pswitch_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 677
    .line 678
    goto :goto_10

    .line 679
    :pswitch_5
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 680
    .line 681
    :goto_10
    const/high16 v10, -0x80000000

    .line 682
    .line 683
    packed-switch v12, :pswitch_data_2

    .line 684
    .line 685
    .line 686
    :pswitch_6
    invoke-static {v6, v12, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :pswitch_7
    const/high16 v15, -0x80000000

    .line 690
    .line 691
    goto :goto_11

    .line 692
    :pswitch_8
    const/4 v15, 0x2

    .line 693
    goto :goto_11

    .line 694
    :pswitch_9
    const/4 v15, 0x1

    .line 695
    goto :goto_11

    .line 696
    :pswitch_a
    const/4 v15, 0x0

    .line 697
    :goto_11
    packed-switch v12, :pswitch_data_3

    .line 698
    .line 699
    .line 700
    :pswitch_b
    invoke-static {v6, v12, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :pswitch_c
    move-object/from16 v10, v26

    .line 704
    .line 705
    const/high16 v6, -0x80000000

    .line 706
    .line 707
    goto :goto_12

    .line 708
    :pswitch_d
    move-object/from16 v10, v26

    .line 709
    .line 710
    const/4 v6, 0x0

    .line 711
    goto :goto_12

    .line 712
    :pswitch_e
    move-object/from16 v10, v26

    .line 713
    .line 714
    const/4 v6, 0x1

    .line 715
    goto :goto_12

    .line 716
    :pswitch_f
    move-object/from16 v10, v26

    .line 717
    .line 718
    const/4 v6, 0x2

    .line 719
    :goto_12
    const v11, -0x800001

    .line 720
    .line 721
    .line 722
    if-eqz v10, :cond_1c

    .line 723
    .line 724
    cmpl-float v12, v7, v11

    .line 725
    .line 726
    if-eqz v12, :cond_1c

    .line 727
    .line 728
    cmpl-float v12, v4, v11

    .line 729
    .line 730
    if-eqz v12, :cond_1c

    .line 731
    .line 732
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 733
    .line 734
    div-float/2addr v11, v4

    .line 735
    iget v4, v10, Landroid/graphics/PointF;->y:F

    .line 736
    .line 737
    div-float/2addr v4, v7

    .line 738
    move/from16 v18, v11

    .line 739
    .line 740
    goto :goto_15

    .line 741
    :cond_1c
    const v10, 0x3d4ccccd    # 0.05f

    .line 742
    .line 743
    .line 744
    const/high16 v4, 0x3f000000    # 0.5f

    .line 745
    .line 746
    const v7, 0x3f733333    # 0.95f

    .line 747
    .line 748
    .line 749
    const/4 v12, 0x1

    .line 750
    const/4 v13, 0x2

    .line 751
    if-eqz v15, :cond_1f

    .line 752
    .line 753
    if-eq v15, v12, :cond_1e

    .line 754
    .line 755
    if-eq v15, v13, :cond_1d

    .line 756
    .line 757
    const v16, -0x800001

    .line 758
    .line 759
    .line 760
    goto :goto_13

    .line 761
    :cond_1d
    const v16, 0x3f733333    # 0.95f

    .line 762
    .line 763
    .line 764
    goto :goto_13

    .line 765
    :cond_1e
    const/high16 v16, 0x3f000000    # 0.5f

    .line 766
    .line 767
    goto :goto_13

    .line 768
    :cond_1f
    const v16, 0x3d4ccccd    # 0.05f

    .line 769
    .line 770
    .line 771
    :goto_13
    if-eqz v6, :cond_22

    .line 772
    .line 773
    if-eq v6, v12, :cond_21

    .line 774
    .line 775
    if-eq v6, v13, :cond_20

    .line 776
    .line 777
    goto :goto_14

    .line 778
    :cond_20
    const v11, 0x3f733333    # 0.95f

    .line 779
    .line 780
    .line 781
    goto :goto_14

    .line 782
    :cond_21
    const/high16 v11, 0x3f000000    # 0.5f

    .line 783
    .line 784
    goto :goto_14

    .line 785
    :cond_22
    const v11, 0x3d4ccccd    # 0.05f

    .line 786
    .line 787
    .line 788
    :goto_14
    move v4, v11

    .line 789
    move/from16 v18, v16

    .line 790
    .line 791
    :goto_15
    new-instance v7, Lcom/google/android/gms/internal/ads/ak;

    .line 792
    .line 793
    const/16 v16, 0x0

    .line 794
    .line 795
    const/16 v25, 0x0

    .line 796
    .line 797
    move-object v10, v7

    .line 798
    move-object v11, v8

    .line 799
    move-object v12, v9

    .line 800
    move-wide/from16 v8, p2

    .line 801
    .line 802
    move-wide/from16 v31, v29

    .line 803
    .line 804
    move-object/from16 v13, v16

    .line 805
    .line 806
    const/16 v17, 0x0

    .line 807
    .line 808
    move-object/from16 v14, v16

    .line 809
    .line 810
    move/from16 v19, v15

    .line 811
    .line 812
    move v15, v4

    .line 813
    move/from16 v16, v17

    .line 814
    .line 815
    move/from16 v17, v6

    .line 816
    .line 817
    move/from16 v20, v1

    .line 818
    .line 819
    move/from16 v22, v23

    .line 820
    .line 821
    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 822
    .line 823
    .line 824
    invoke-static {v8, v9, v3, v2}, Lcom/google/android/gms/internal/ads/g2;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    move-wide/from16 v8, v31

    .line 829
    .line 830
    invoke-static {v8, v9, v3, v2}, Lcom/google/android/gms/internal/ads/g2;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 831
    .line 832
    .line 833
    move-result v4

    .line 834
    :goto_16
    if-ge v1, v4, :cond_23

    .line 835
    .line 836
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    check-cast v6, Ljava/util/List;

    .line 841
    .line 842
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    add-int/lit8 v1, v1, 0x1

    .line 846
    .line 847
    goto :goto_16

    .line 848
    :cond_23
    :goto_17
    move-object/from16 v1, v27

    .line 849
    .line 850
    move-object/from16 v4, v28

    .line 851
    .line 852
    goto/16 :goto_0

    .line 853
    .line 854
    :cond_24
    const/16 v17, 0x0

    .line 855
    .line 856
    const/4 v15, 0x0

    .line 857
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-ge v15, v1, :cond_28

    .line 862
    .line 863
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    move-object v5, v1

    .line 868
    check-cast v5, Ljava/util/List;

    .line 869
    .line 870
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    if-eqz v1, :cond_26

    .line 875
    .line 876
    if-eqz v15, :cond_25

    .line 877
    .line 878
    move-object/from16 v4, p4

    .line 879
    .line 880
    const/4 v1, 0x1

    .line 881
    const/4 v10, -0x1

    .line 882
    goto :goto_19

    .line 883
    :cond_25
    const/4 v15, 0x0

    .line 884
    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    const/4 v10, -0x1

    .line 889
    add-int/2addr v1, v10

    .line 890
    if-eq v15, v1, :cond_27

    .line 891
    .line 892
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    check-cast v1, Ljava/lang/Long;

    .line 897
    .line 898
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 899
    .line 900
    .line 901
    move-result-wide v6

    .line 902
    add-int/lit8 v1, v15, 0x1

    .line 903
    .line 904
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    check-cast v1, Ljava/lang/Long;

    .line 909
    .line 910
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 911
    .line 912
    .line 913
    move-result-wide v8

    .line 914
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    check-cast v1, Ljava/lang/Long;

    .line 919
    .line 920
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 921
    .line 922
    .line 923
    move-result-wide v11

    .line 924
    sub-long/2addr v8, v11

    .line 925
    new-instance v1, Lcom/google/android/gms/internal/ads/S1;

    .line 926
    .line 927
    move-object v4, v1

    .line 928
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 929
    .line 930
    .line 931
    move-object/from16 v4, p4

    .line 932
    .line 933
    invoke-virtual {v4, v1}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    const/4 v1, 0x1

    .line 937
    :goto_19
    add-int/2addr v15, v1

    .line 938
    goto :goto_18

    .line 939
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 940
    .line 941
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 942
    .line 943
    .line 944
    throw v1

    .line 945
    :cond_28
    return-void

    .line 946
    nop

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method
