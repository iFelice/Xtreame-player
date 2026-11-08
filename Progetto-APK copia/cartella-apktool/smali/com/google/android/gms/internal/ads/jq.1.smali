.class public final synthetic Lcom/google/android/gms/internal/ads/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Landroid/webkit/WebView;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/jq;->a:I

    .line 3
    const-string v0, "Google"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jq;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jq;->c:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/jq;->e:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jq;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jq;->f:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jq;->g:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/ads/jq;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/jq;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jq;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jq;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jq;->d:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/jq;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jq;->f:Landroid/webkit/WebView;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/jq;->g:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ads/jq;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/yx;->K:Lcom/google/android/gms/internal/ads/yx;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/Cx;->J:Lcom/google/android/gms/internal/ads/Cx;

    .line 6
    .line 7
    const-string v3, "Method called before OM SDK activation"

    .line 8
    .line 9
    sget-object v4, Lcom/google/android/gms/internal/ads/Cw;->d:LG/c;

    .line 10
    .line 11
    iget v5, v0, Lcom/google/android/gms/internal/ads/jq;->a:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    iget v7, v0, Lcom/google/android/gms/internal/ads/jq;->h:I

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    iget v9, v0, Lcom/google/android/gms/internal/ads/jq;->e:I

    .line 18
    .line 19
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/jq;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-string v11, "javascript"

    .line 22
    .line 23
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/jq;->c:Ljava/lang/String;

    .line 24
    .line 25
    packed-switch v5, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/jq;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/V7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/V7;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    invoke-static {v11}, Lc4/y;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Cx;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v10}, Lc4/y;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Cx;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uc;->e(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    invoke-static {v12}, Lc4/y;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yx;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    if-ne v5, v2, :cond_0

    .line 51
    .line 52
    const-string v1, "Omid js session error; Unable to parse impression owner: javascript"

    .line 53
    .line 54
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-nez v12, :cond_1

    .line 59
    .line 60
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uc;->D(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "Omid js session error; Unable to parse creative type: "

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-ne v12, v1, :cond_2

    .line 75
    .line 76
    if-ne v11, v2, :cond_2

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "Omid js session error; Video events owner unknown for video creative: "

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance v1, Ll/s1;

    .line 93
    .line 94
    sget-object v18, Lcom/google/android/gms/internal/ads/wx;->I:Lcom/google/android/gms/internal/ads/wx;

    .line 95
    .line 96
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/jq;->f:Landroid/webkit/WebView;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jq;->g:Ljava/lang/String;

    .line 99
    .line 100
    const-string v17, ""

    .line 101
    .line 102
    move-object v13, v1

    .line 103
    move-object/from16 v16, v2

    .line 104
    .line 105
    invoke-direct/range {v13 .. v18}, Ll/s1;-><init>(Lcom/google/android/gms/internal/ads/V7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wx;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uc;->g(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lc4/y;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ax;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v12, v2, v5, v11, v6}, LE3/a;->a(Lcom/google/android/gms/internal/ads/yx;Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/Cx;Lcom/google/android/gms/internal/ads/Cx;Z)LE3/a;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-boolean v4, v4, LG/c;->H:Z

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    new-instance v3, Lcom/google/android/gms/internal/ads/xx;

    .line 125
    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/xx;-><init>(LE3/a;Ll/s1;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v8, Lcom/google/android/gms/internal/ads/mq;

    .line 138
    .line 139
    invoke-direct {v8, v3, v1}, Lcom/google/android/gms/internal/ads/mq;-><init>(Lcom/google/android/gms/internal/ads/xx;Ll/s1;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-object v8

    .line 143
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :pswitch_0
    const-string v5, "Google"

    .line 150
    .line 151
    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/V7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/V7;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-static {v11}, Lc4/y;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Cx;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uc;->e(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-static {v11}, Lc4/y;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yx;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    if-ne v5, v2, :cond_4

    .line 168
    .line 169
    const-string v1, "Omid html session error; Unable to parse impression owner: javascript"

    .line 170
    .line 171
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    if-nez v11, :cond_5

    .line 176
    .line 177
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uc;->D(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string v2, "Omid html session error; Unable to parse creative type: "

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    invoke-static {v10}, Lc4/y;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Cx;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-ne v11, v1, :cond_6

    .line 196
    .line 197
    if-ne v9, v2, :cond_6

    .line 198
    .line 199
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v2, "Omid html session error; Video events owner unknown for video creative: "

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_6
    new-instance v1, Ll/s1;

    .line 214
    .line 215
    sget-object v18, Lcom/google/android/gms/internal/ads/wx;->H:Lcom/google/android/gms/internal/ads/wx;

    .line 216
    .line 217
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/jq;->f:Landroid/webkit/WebView;

    .line 218
    .line 219
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jq;->g:Ljava/lang/String;

    .line 220
    .line 221
    const-string v17, ""

    .line 222
    .line 223
    move-object v13, v1

    .line 224
    move-object/from16 v16, v2

    .line 225
    .line 226
    invoke-direct/range {v13 .. v18}, Ll/s1;-><init>(Lcom/google/android/gms/internal/ads/V7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wx;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uc;->g(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2}, Lc4/y;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ax;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {v11, v2, v5, v9, v6}, LE3/a;->a(Lcom/google/android/gms/internal/ads/yx;Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/Cx;Lcom/google/android/gms/internal/ads/Cx;Z)LE3/a;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-boolean v4, v4, LG/c;->H:Z

    .line 242
    .line 243
    if-eqz v4, :cond_7

    .line 244
    .line 245
    new-instance v3, Lcom/google/android/gms/internal/ads/xx;

    .line 246
    .line 247
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/xx;-><init>(LE3/a;Ll/s1;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v8, Lcom/google/android/gms/internal/ads/mq;

    .line 259
    .line 260
    invoke-direct {v8, v3, v1}, Lcom/google/android/gms/internal/ads/mq;-><init>(Lcom/google/android/gms/internal/ads/xx;Ll/s1;)V

    .line 261
    .line 262
    .line 263
    :goto_1
    return-object v8

    .line 264
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
