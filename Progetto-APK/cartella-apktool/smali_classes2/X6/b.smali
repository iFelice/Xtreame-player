.class public abstract LX6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, LX6/b;->a:Ljava/text/NumberFormat;

    .line 6
    .line 7
    return-void
.end method

.method public static a(DDI)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    return-object v5

    .line 15
    :cond_0
    sget-object v6, LX6/b;->a:Ljava/text/NumberFormat;

    .line 16
    .line 17
    const/4 v7, 0x5

    .line 18
    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 19
    .line 20
    .line 21
    sub-double v7, p0, p2

    .line 22
    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    const-wide v9, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmpg-double v11, v7, v9

    .line 33
    .line 34
    if-gez v11, :cond_1

    .line 35
    .line 36
    new-array v0, v1, [D

    .line 37
    .line 38
    aput-wide p0, v0, v3

    .line 39
    .line 40
    aput-wide p0, v0, v4

    .line 41
    .line 42
    const-wide/16 v7, 0x0

    .line 43
    .line 44
    aput-wide v7, v0, v2

    .line 45
    .line 46
    move-object/from16 v16, v5

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    cmpl-double v7, p0, p2

    .line 52
    .line 53
    if-lez v7, :cond_2

    .line 54
    .line 55
    move-wide/from16 v9, p0

    .line 56
    .line 57
    move-wide/from16 v7, p2

    .line 58
    .line 59
    const/4 v11, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v11, 0x0

    .line 62
    move-wide/from16 v7, p0

    .line 63
    .line 64
    move-wide/from16 v9, p2

    .line 65
    .line 66
    :goto_0
    sub-double v12, v7, v9

    .line 67
    .line 68
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    int-to-double v14, v0

    .line 73
    div-double/2addr v12, v14

    .line 74
    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v14

    .line 78
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v14

    .line 82
    double-to-int v0, v14

    .line 83
    neg-int v14, v0

    .line 84
    int-to-double v14, v14

    .line 85
    move-object/from16 v16, v5

    .line 86
    .line 87
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 88
    .line 89
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 90
    .line 91
    .line 92
    move-result-wide v14

    .line 93
    mul-double v14, v14, v12

    .line 94
    .line 95
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 96
    .line 97
    cmpl-double v17, v14, v12

    .line 98
    .line 99
    if-lez v17, :cond_3

    .line 100
    .line 101
    move-wide v14, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 104
    .line 105
    cmpl-double v19, v14, v17

    .line 106
    .line 107
    if-lez v19, :cond_4

    .line 108
    .line 109
    move-wide v14, v12

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 112
    .line 113
    cmpl-double v19, v14, v12

    .line 114
    .line 115
    if-lez v19, :cond_5

    .line 116
    .line 117
    move-wide/from16 v14, v17

    .line 118
    .line 119
    :cond_5
    :goto_1
    int-to-double v12, v0

    .line 120
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    mul-double v4, v4, v14

    .line 125
    .line 126
    div-double/2addr v7, v4

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v7

    .line 131
    mul-double v7, v7, v4

    .line 132
    .line 133
    div-double/2addr v9, v4

    .line 134
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    mul-double v9, v9, v4

    .line 139
    .line 140
    if-eqz v11, :cond_6

    .line 141
    .line 142
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 143
    .line 144
    mul-double v4, v4, v11

    .line 145
    .line 146
    new-array v0, v1, [D

    .line 147
    .line 148
    aput-wide v9, v0, v3

    .line 149
    .line 150
    const/4 v11, 0x1

    .line 151
    aput-wide v7, v0, v11

    .line 152
    .line 153
    aput-wide v4, v0, v2

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    const/4 v11, 0x1

    .line 157
    new-array v0, v1, [D

    .line 158
    .line 159
    aput-wide v7, v0, v3

    .line 160
    .line 161
    aput-wide v9, v0, v11

    .line 162
    .line 163
    aput-wide v4, v0, v2

    .line 164
    .line 165
    :goto_2
    aget-wide v4, v0, v11

    .line 166
    .line 167
    aget-wide v7, v0, v3

    .line 168
    .line 169
    sub-double/2addr v4, v7

    .line 170
    aget-wide v7, v0, v2

    .line 171
    .line 172
    div-double/2addr v4, v7

    .line 173
    double-to-int v1, v4

    .line 174
    add-int/2addr v1, v11

    .line 175
    const/4 v4, 0x0

    .line 176
    :goto_3
    if-ge v4, v1, :cond_7

    .line 177
    .line 178
    aget-wide v7, v0, v3

    .line 179
    .line 180
    int-to-double v9, v4

    .line 181
    aget-wide v11, v0, v2

    .line 182
    .line 183
    mul-double v9, v9, v11

    .line 184
    .line 185
    add-double/2addr v9, v7

    .line 186
    :try_start_0
    invoke-virtual {v6, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v6, v5}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 195
    .line 196
    .line 197
    move-result-wide v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    move-object/from16 v7, v16

    .line 203
    .line 204
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    const/4 v5, 0x1

    .line 208
    add-int/2addr v4, v5

    .line 209
    goto :goto_3

    .line 210
    :cond_7
    move-object/from16 v7, v16

    .line 211
    .line 212
    return-object v7
.end method
