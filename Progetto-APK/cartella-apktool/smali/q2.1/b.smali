.class public abstract Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DiagnosticsWrkr"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tagWithPrefix(\"DiagnosticsWrkr\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lq2/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lm2/l;Lm2/u;Lm2/i;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v3, 0x17

    .line 11
    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    const-string v2, "Job Id"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "Alarm Id"

    .line 18
    .line 19
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "\n Id \t Class Name\t "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "\t State\t Unique Name\t Tags\t"

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lm2/q;

    .line 56
    .line 57
    invoke-static {v3}, Lm2/f;->a(Lm2/q;)Lm2/j;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object/from16 v5, p2

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Lm2/i;->m(Lm2/j;)Lm2/g;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    iget v4, v4, Lm2/g;->c:I

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    move-object v4, v6

    .line 78
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string v7, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    invoke-static {v8, v7}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-object v9, v3, Lm2/q;->a:Ljava/lang/String;

    .line 89
    .line 90
    if-nez v9, :cond_2

    .line 91
    .line 92
    invoke-virtual {v7, v8}, LP1/z;->J(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v7, v8, v9}, LP1/z;->g(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    iget-object v8, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v8, LP1/x;

    .line 102
    .line 103
    invoke-virtual {v8}, LP1/x;->b()V

    .line 104
    .line 105
    .line 106
    iget-object v8, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v8, LP1/x;

    .line 109
    .line 110
    invoke-static {v8, v7}, LZ3/C;->h(LP1/x;LP1/z;)Landroid/database/Cursor;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_4

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_3

    .line 135
    .line 136
    move-object v11, v6

    .line 137
    goto :goto_5

    .line 138
    :cond_3
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    :goto_5
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_6

    .line 148
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, LP1/z;->O()V

    .line 152
    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    const/16 v15, 0x3e

    .line 156
    .line 157
    const-string v11, ","

    .line 158
    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    invoke-static/range {v10 .. v15}, Lu6/o;->z(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu6/a;I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    move-object/from16 v10, p1

    .line 166
    .line 167
    invoke-virtual {v10, v9}, Lm2/u;->B(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const/16 v16, 0x3e

    .line 172
    .line 173
    const-string v12, ","

    .line 174
    .line 175
    const/4 v15, 0x0

    .line 176
    invoke-static/range {v11 .. v16}, Lu6/o;->z(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu6/a;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const-string v8, "\n"

    .line 181
    .line 182
    const-string v11, "\t "

    .line 183
    .line 184
    invoke-static {v8, v9, v11}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    iget-object v9, v3, Lm2/q;->c:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v3, v3, Lm2/q;->b:I

    .line 203
    .line 204
    invoke-static {v3}, Lcom/google/protobuf/U2;->B(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const/16 v3, 0x9

    .line 224
    .line 225
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7}, LP1/z;->O()V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 249
    .line 250
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object v0
.end method
