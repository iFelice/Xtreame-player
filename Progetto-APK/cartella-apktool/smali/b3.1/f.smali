.class public final synthetic Lb3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/h;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb3/j;

.field public final synthetic I:LU2/i;


# direct methods
.method public synthetic constructor <init>(Lb3/j;LU2/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb3/f;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb3/f;->H:Lb3/j;

    .line 7
    .line 8
    iput-object p2, p0, Lb3/f;->I:LU2/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lb3/f;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lb3/f;->I:LU2/i;

    .line 4
    .line 5
    iget-object v2, p0, Lb3/f;->H:Lb3/j;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lb3/j;->E(Landroid/database/sqlite/SQLiteDatabase;LU2/i;)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, LC0/i;

    .line 43
    .line 44
    const/16 v1, 0x12

    .line 45
    .line 46
    invoke-direct {v0, v1}, LC0/i;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lb3/j;->c0(Landroid/database/Cursor;Lb3/h;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Boolean;

    .line 54
    .line 55
    :goto_0
    return-object p1

    .line 56
    :pswitch_0
    move-object v0, p1

    .line 57
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    .line 59
    iget-object p1, v2, Lb3/j;->J:Lb3/a;

    .line 60
    .line 61
    iget v3, p1, Lb3/a;->b:I

    .line 62
    .line 63
    invoke-virtual {v2, v0, v1, v3}, Lb3/j;->O(Landroid/database/sqlite/SQLiteDatabase;LU2/i;I)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {}, LR2/c;->values()[LR2/c;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    array-length v4, v3

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    :goto_1
    if-ge v6, v4, :cond_3

    .line 75
    .line 76
    aget-object v7, v3, v6

    .line 77
    .line 78
    iget-object v9, v1, LU2/i;->c:LR2/c;

    .line 79
    .line 80
    if-ne v7, v9, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    iget v10, p1, Lb3/a;->b:I

    .line 88
    .line 89
    sub-int/2addr v10, v9

    .line 90
    if-gtz v10, :cond_2

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    invoke-static {}, LU2/i;->a()Lm2/u;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    iget-object v11, v1, LU2/i;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v9, v11}, Lm2/u;->R(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v7}, Lm2/u;->S(LR2/c;)V

    .line 103
    .line 104
    .line 105
    iget-object v7, v1, LU2/i;->b:[B

    .line 106
    .line 107
    iput-object v7, v9, Lm2/u;->I:Ljava/lang/Object;

    .line 108
    .line 109
    invoke-virtual {v9}, Lm2/u;->j()LU2/i;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v2, v0, v7, v10}, Lb3/j;->O(Landroid/database/sqlite/SQLiteDatabase;LU2/i;I)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "event_id IN ("

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-ge v5, v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lb3/b;

    .line 146
    .line 147
    iget-wide v2, v2, Lb3/b;->a:J

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/lit8 v2, v2, -0x1

    .line 157
    .line 158
    if-ge v5, v2, :cond_4

    .line 159
    .line 160
    const/16 v2, 0x2c

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_5
    const/16 v2, 0x29

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v2, "event_id"

    .line 174
    .line 175
    const-string v3, "name"

    .line 176
    .line 177
    const-string v4, "value"

    .line 178
    .line 179
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    const-string v1, "event_metadata"

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v1, La3/i;

    .line 198
    .line 199
    const/4 v2, 0x4

    .line 200
    invoke-direct {v1, p1, v2}, La3/i;-><init>(Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Lb3/j;->c0(Landroid/database/Cursor;Lb3/h;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    :goto_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lb3/b;

    .line 221
    .line 222
    iget-wide v2, v1, Lb3/b;->a:J

    .line 223
    .line 224
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_6

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    iget-object v2, v1, Lb3/b;->c:LU2/h;

    .line 236
    .line 237
    invoke-virtual {v2}, LU2/h;->c()Ll/x;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-wide v3, v1, Lb3/b;->a:J

    .line 242
    .line 243
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Ljava/util/Set;

    .line 252
    .line 253
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_7

    .line 262
    .line 263
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    check-cast v6, Lb3/i;

    .line 268
    .line 269
    iget-object v7, v6, Lb3/i;->a:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v6, v6, Lb3/i;->b:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v2, v7, v6}, Ll/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_7
    invoke-virtual {v2}, Ll/x;->e()LU2/h;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    new-instance v5, Lb3/b;

    .line 282
    .line 283
    iget-object v1, v1, Lb3/b;->b:LU2/i;

    .line 284
    .line 285
    invoke-direct {v5, v3, v4, v1, v2}, Lb3/b;-><init>(JLU2/i;LU2/h;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_8
    return-object v8

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
