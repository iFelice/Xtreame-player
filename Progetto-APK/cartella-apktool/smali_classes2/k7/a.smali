.class public final Lk7/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public G:Ljava/lang/String;

.field public H:J

.field public I:D

.field public J:I

.field public K:D

.field public L:Z

.field public M:D

.field public N:I

.field public O:Ljava/net/HttpURLConnection;


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk7/a;->J:I

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lk7/a;->G:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, "random4000x4000.jpg"

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, "random3000x3000.jpg"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lk7/a;->H:J

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 79
    .line 80
    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 88
    .line 89
    iput-object v2, p0, Lk7/a;->O:Ljava/net/HttpURLConnection;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 92
    .line 93
    .line 94
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_1
    const/16 v2, 0xc8

    .line 101
    .line 102
    if-ne v0, v2, :cond_3

    .line 103
    .line 104
    const/16 v2, 0x2800

    .line 105
    .line 106
    :try_start_1
    new-array v2, v2, [B

    .line 107
    .line 108
    iget-object v5, p0, Lk7/a;->O:Ljava/net/HttpURLConnection;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    const/4 v7, -0x1

    .line 119
    if-eq v6, v7, :cond_2

    .line 120
    .line 121
    iget v7, p0, Lk7/a;->J:I

    .line 122
    .line 123
    add-int/2addr v7, v6

    .line 124
    iput v7, p0, Lk7/a;->J:I

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    iget-wide v8, p0, Lk7/a;->H:J

    .line 131
    .line 132
    sub-long/2addr v6, v8

    .line 133
    long-to-double v6, v6

    .line 134
    div-double/2addr v6, v3

    .line 135
    iput-wide v6, p0, Lk7/a;->I:D

    .line 136
    .line 137
    iget v8, p0, Lk7/a;->J:I

    .line 138
    .line 139
    const-wide/16 v9, 0x0

    .line 140
    .line 141
    if-ltz v8, :cond_1

    .line 142
    .line 143
    mul-int/lit8 v8, v8, 0x8

    .line 144
    .line 145
    const v11, 0xf4240

    .line 146
    .line 147
    .line 148
    div-int/2addr v8, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 149
    int-to-double v11, v8

    .line 150
    div-double/2addr v11, v6

    .line 151
    :try_start_2
    new-instance v6, Ljava/math/BigDecimal;

    .line 152
    .line 153
    invoke-direct {v6, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .line 155
    .line 156
    :try_start_3
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 157
    .line 158
    const/4 v8, 0x2

    .line 159
    invoke-virtual {v6, v8, v7}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    :catch_1
    iput-wide v9, p0, Lk7/a;->M:D

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_1
    iput-wide v9, p0, Lk7/a;->M:D

    .line 171
    .line 172
    :goto_2
    iget-wide v6, p0, Lk7/a;->I:D

    .line 173
    .line 174
    iget v8, p0, Lk7/a;->N:I

    .line 175
    .line 176
    int-to-double v8, v8

    .line 177
    cmpl-double v10, v6, v8

    .line 178
    .line 179
    if-ltz v10, :cond_0

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :catch_2
    move-exception v2

    .line 183
    goto :goto_3

    .line 184
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lk7/a;->O:Ljava/net/HttpURLConnection;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 195
    .line 196
    const-string v3, "Link not found..."

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    iget-wide v5, p0, Lk7/a;->H:J

    .line 213
    .line 214
    sub-long/2addr v0, v5

    .line 215
    long-to-double v0, v0

    .line 216
    div-double/2addr v0, v3

    .line 217
    iput-wide v0, p0, Lk7/a;->I:D

    .line 218
    .line 219
    iget v2, p0, Lk7/a;->J:I

    .line 220
    .line 221
    mul-int/lit8 v2, v2, 0x8

    .line 222
    .line 223
    int-to-double v2, v2

    .line 224
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    div-double/2addr v2, v4

    .line 230
    div-double/2addr v2, v0

    .line 231
    iput-wide v2, p0, Lk7/a;->K:D

    .line 232
    .line 233
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lk7/a;->L:Z

    .line 235
    .line 236
    return-void
.end method
