.class public Lpe/hf/black20/SeriesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static A0:Lh7/i; = null

.field public static B0:Landroid/widget/ListView; = null

.field public static C0:Lorg/json/JSONArray; = null

.field public static D0:Lorg/json/JSONArray; = null

.field public static E0:I = 0x0

.field public static F0:Ljava/lang/String; = null

.field public static G0:Ljava/lang/String; = ""

.field public static x0:Lc7/a;

.field public static y0:Lc7/b;

.field public static z0:Lc7/d;


# instance fields
.field public final G:Lpe/hf/black20/SeriesActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/widget/ProgressBar;

.field public J:Lc7/a;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/ImageView;

.field public S:Lorg/json/JSONObject;

.field public T:Ljava/util/ArrayList;

.field public U:Ljava/util/ArrayList;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:I

.field public Y:Z

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Ljava/util/ArrayList;

.field public m0:Ljava/lang/String;

.field public n0:I

.field public o0:F

.field public p0:Ljava/lang/String;

.field public q0:Landroid/widget/LinearLayout;

.field public r0:Landroid/widget/ImageView;

.field public s0:Lorg/json/JSONObject;

.field public t0:Ljava/lang/String;

.field public u0:I

.field public final v0:LN2/a;

.field public w0:Lf/G;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 5
    .line 6
    const-string v0, "8000"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/SeriesActivity;->V:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lpe/hf/black20/SeriesActivity;->X:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lpe/hf/black20/SeriesActivity;->Y:Z

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->c0:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->d0:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->e0:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->i0:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->j0:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->k0:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->m0:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "0"

    .line 53
    .line 54
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 62
    .line 63
    const-string v2, "arr"

    .line 64
    .line 65
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 66
    .line 67
    iput v1, p0, Lpe/hf/black20/SeriesActivity;->u0:I

    .line 68
    .line 69
    new-instance v1, LN2/a;

    .line 70
    .line 71
    const/16 v2, 0x12c

    .line 72
    .line 73
    invoke-direct {v1, v2, v0}, LN2/a;-><init>(IZ)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->v0:LN2/a;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Lpe/hf/black20/SeriesActivity;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "youtube_trailer"

    .line 5
    .line 6
    const-string v1, "rating"

    .line 7
    .line 8
    const-string v2, "releaseDate"

    .line 9
    .line 10
    const-string v3, "cast"

    .line 11
    .line 12
    const-string v4, "director"

    .line 13
    .line 14
    const-string v5, "plot"

    .line 15
    .line 16
    const-string v6, "genre"

    .line 17
    .line 18
    :try_start_0
    iget-object v7, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    iget-object v7, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iput-object v6, p0, Lpe/hf/black20/SeriesActivity;->e0:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    nop

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v6, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    iget-object v6, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iput-object v5, p0, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iput-object v4, p0, Lpe/hf/black20/SeriesActivity;->d0:Ljava/lang/String;

    .line 68
    .line 69
    :cond_2
    iget-object v4, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    iget-object v4, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->c0:Ljava/lang/String;

    .line 84
    .line 85
    :cond_3
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;

    .line 100
    .line 101
    :cond_4
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 116
    .line 117
    :cond_5
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->c0:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->M:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->M:Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->c0:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->d0:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->N:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->N:Landroid/widget/TextView;

    .line 168
    .line 169
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->d0:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->e0:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->O:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->O:Landroid/widget/TextView;

    .line 189
    .line 190
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->e0:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    :goto_4
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_a

    .line 202
    .line 203
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->L:Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->L:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :goto_5
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 225
    .line 226
    const-string v2, "0"

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_b
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-lez v0, :cond_d

    .line 242
    .line 243
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    const/4 v3, 0x1

    .line 247
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const-string v3, ""

    .line 258
    .line 259
    :goto_6
    if-ge v2, v0, :cond_d

    .line 260
    .line 261
    const-string v4, "\u2b50"

    .line 262
    .line 263
    invoke-static {v3, v4}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget-object v4, p0, Lpe/hf/black20/SeriesActivity;->Q:Landroid/widget/TextView;

    .line 268
    .line 269
    const-string v5, " ("

    .line 270
    .line 271
    invoke-static {v3, v5}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    iget-object v6, p0, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v6, ")"

    .line 281
    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_c
    :goto_7
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->Q:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    :cond_d
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_e

    .line 307
    .line 308
    iget-object p0, p0, Lpe/hf/black20/SeriesActivity;->P:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_e
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->P:Landroid/widget/TextView;

    .line 315
    .line 316
    iget-object p0, p0, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    :goto_8
    return-void
.end method


# virtual methods
.method public final b(Lorg/json/JSONArray;)V
    .locals 12

    .line 1
    const-string v0, "display_name"

    .line 2
    .line 3
    const-string v1, "XCIPTV_TAG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 14
    .line 15
    sget-object v3, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->J:Lc7/a;

    .line 21
    .line 22
    iput-object v2, v3, Lc7/a;->H:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v4, v3, Lc7/a;->H:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v6, ""

    .line 37
    .line 38
    move-object v8, v6

    .line 39
    const/4 v7, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-ge v7, v9, :cond_1

    .line 45
    .line 46
    const-string v9, "\""

    .line 47
    .line 48
    if-nez v7, :cond_0

    .line 49
    .line 50
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v11, ", \""

    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 p1, 0x1

    .line 104
    const/16 v7, 0x8

    .line 105
    .line 106
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v10, "SELECT * FROM episodes WHERE id in ("

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v8, ")"

    .line 120
    .line 121
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    new-instance v4, Lf7/a;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    const/4 v8, 0x2

    .line 157
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    const/4 v8, 0x3

    .line 161
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    const/4 v8, 0x4

    .line 165
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    const/4 v8, 0x5

    .line 169
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    const/4 v8, 0x6

    .line 173
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    const/4 v8, 0x7

    .line 177
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    const/16 v8, 0x9

    .line 184
    .line 185
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    const/16 v8, 0xa

    .line 189
    .line 190
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    const/16 v8, 0xb

    .line 194
    .line 195
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    const/16 v8, 0xc

    .line 199
    .line 200
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    const/16 v8, 0xd

    .line 204
    .line 205
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    const/16 v8, 0xe

    .line 209
    .line 210
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    const/16 v8, 0xf

    .line 214
    .line 215
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    iput-object v8, v4, Lf7/a;->a:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v8, v3, Lc7/a;->H:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    .line 228
    .line 229
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-nez v4, :cond_2

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catchall_0
    nop

    .line 234
    goto :goto_3

    .line 235
    :cond_3
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    .line 237
    .line 238
    :cond_4
    iget-object v2, v3, Lc7/a;->H:Ljava/util/ArrayList;

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :goto_3
    if-eqz v2, :cond_4

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v4, " otr_episodes.size() ----- "

    .line 247
    .line 248
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    const/4 v1, 0x0

    .line 270
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-ge v1, v3, :cond_6

    .line 275
    .line 276
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    .line 277
    .line 278
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Lf7/a;

    .line 283
    .line 284
    iget-object v4, v4, Lf7/a;->a:Ljava/lang/String;

    .line 285
    .line 286
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Lorg/json/JSONArray;

    .line 290
    .line 291
    const-string v8, "urls"

    .line 292
    .line 293
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    if-lez v8, :cond_5

    .line 305
    .line 306
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    goto :goto_6

    .line 311
    :cond_5
    move-object v4, v6

    .line 312
    :goto_6
    new-instance v8, Ljava/util/HashMap;

    .line 313
    .line 314
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v9, "id"

    .line 318
    .line 319
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    const-string v9, "episode_num"

    .line 327
    .line 328
    add-int/lit8 v10, v1, 0x1

    .line 329
    .line 330
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const-string v9, "title"

    .line 338
    .line 339
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    const-string v9, "container_extension"

    .line 347
    .line 348
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    const-string v9, "season"

    .line 352
    .line 353
    iget-object v10, p0, Lpe/hf/black20/SeriesActivity;->m0:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    const-string v9, "plot"

    .line 359
    .line 360
    const-string v10, "description"

    .line 361
    .line 362
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    const-string v3, "direct_source"

    .line 370
    .line 371
    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    .line 378
    .line 379
    :catch_1
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 380
    .line 381
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    new-instance v3, Lb7/t;

    .line 385
    .line 386
    iget-object v4, p0, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v3, p1, p0, v4}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 389
    .line 390
    .line 391
    sget-object v4, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 392
    .line 393
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    .line 395
    .line 396
    sget-object v3, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 397
    .line 398
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 399
    .line 400
    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 402
    .line 403
    goto/16 :goto_5

    .line 404
    .line 405
    :cond_6
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lpe/hf/black20/SeriesActivity;->Y:Z

    .line 3
    .line 4
    iget v0, p0, Lpe/hf/black20/SeriesActivity;->o0:F

    .line 5
    .line 6
    const/high16 v1, 0x41200000    # 10.0f

    .line 7
    .line 8
    mul-float v1, v1, v0

    .line 9
    .line 10
    float-to-int v1, v1

    .line 11
    const/high16 v2, 0x420c0000    # 35.0f

    .line 12
    .line 13
    mul-float v0, v0, v2

    .line 14
    .line 15
    float-to-int v0, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    iget-object v4, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    .line 26
    new-instance v4, Landroid/widget/Button;

    .line 27
    .line 28
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 29
    .line 30
    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v7, -0x2

    .line 36
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 40
    .line 41
    .line 42
    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    const/high16 v6, 0x41700000    # 15.0f

    .line 48
    .line 49
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    const v6, 0x7f080541

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0x11

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "SEASON "

    .line 73
    .line 74
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/util/HashMap;

    .line 84
    .line 85
    const-string v7, "season_no"

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "xtreamcodes"

    .line 108
    .line 109
    const-string v8, "ORT_WHICH_PANEL"

    .line 110
    .line 111
    invoke-virtual {v5, v8, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const-string v6, "otr"

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_0

    .line 122
    .line 123
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ljava/util/HashMap;

    .line 130
    .line 131
    const-string v6, "episodes"

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    iput-object v5, p0, Lpe/hf/black20/SeriesActivity;->m0:Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_0
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 158
    .line 159
    const-string v6, "arr"

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_1

    .line 166
    .line 167
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_1
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :goto_1
    iget-object v5, p0, Lpe/hf/black20/SeriesActivity;->q0:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    new-instance v5, Ll/c;

    .line 196
    .line 197
    const/16 v6, 0xf

    .line 198
    .line 199
    invoke-direct {v5, v6, p0, v4}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0e004a

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1c

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const v1, 0x7f0b03da

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/ProgressBar;

    .line 46
    .line 47
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    const v1, 0x7f0b0554

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->K:Landroid/widget/TextView;

    .line 59
    .line 60
    const v1, 0x7f0b0564

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->L:Landroid/widget/TextView;

    .line 70
    .line 71
    const v1, 0x7f0b050e

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->M:Landroid/widget/TextView;

    .line 81
    .line 82
    const v1, 0x7f0b052a

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->N:Landroid/widget/TextView;

    .line 92
    .line 93
    const v1, 0x7f0b053f

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->O:Landroid/widget/TextView;

    .line 103
    .line 104
    const v1, 0x7f0b056a

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->P:Landroid/widget/TextView;

    .line 114
    .line 115
    const v1, 0x7f0b0569

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->Q:Landroid/widget/TextView;

    .line 125
    .line 126
    const v1, 0x7f0b0288

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/widget/ImageView;

    .line 134
    .line 135
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 136
    .line 137
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    const/16 v2, 0x8

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    const v1, 0x7f0b028f

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object v1, p0, Lpe/hf/black20/SeriesActivity;->R:Landroid/widget/ImageView;

    .line 154
    .line 155
    const v1, 0x7f0b0332

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroid/widget/ListView;

    .line 163
    .line 164
    sput-object v1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 165
    .line 166
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 167
    .line 168
    const-string v3, "pe.hf.black20"

    .line 169
    .line 170
    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->H:Landroid/content/SharedPreferences;

    .line 175
    .line 176
    new-instance v3, Lc7/a;

    .line 177
    .line 178
    invoke-direct {v3, v1, p1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 179
    .line 180
    .line 181
    sput-object v3, Lpe/hf/black20/SeriesActivity;->x0:Lc7/a;

    .line 182
    .line 183
    new-instance v3, Lc7/b;

    .line 184
    .line 185
    invoke-direct {v3, v1, p1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 186
    .line 187
    .line 188
    sput-object v3, Lpe/hf/black20/SeriesActivity;->y0:Lc7/b;

    .line 189
    .line 190
    new-instance v3, Lc7/d;

    .line 191
    .line 192
    invoke-direct {v3, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    sput-object v3, Lpe/hf/black20/SeriesActivity;->z0:Lc7/d;

    .line 196
    .line 197
    new-instance v3, Lc7/a;

    .line 198
    .line 199
    const/4 v4, 0x1

    .line 200
    invoke-direct {v3, v1, v4}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 201
    .line 202
    .line 203
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->J:Lc7/a;

    .line 204
    .line 205
    sget-object v3, Lpe/hf/black20/SeriesActivity;->x0:Lc7/a;

    .line 206
    .line 207
    const-string v4, "Default (XC)"

    .line 208
    .line 209
    const-string v5, "ORT_PROFILE"

    .line 210
    .line 211
    invoke-static {v5, v4, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    sput-object v3, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    const-string v4, "name"

    .line 226
    .line 227
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, p0, Lpe/hf/black20/SeriesActivity;->Z:Ljava/lang/String;

    .line 232
    .line 233
    sput-object v4, Lpe/hf/black20/SeriesActivity;->G0:Ljava/lang/String;

    .line 234
    .line 235
    const-string v4, "cover"

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    sput-object v4, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 242
    .line 243
    const-string v4, "series_id"

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iput-object v4, p0, Lpe/hf/black20/SeriesActivity;->a0:Ljava/lang/String;

    .line 250
    .line 251
    const-string v4, "ORT_WHICH_PANEL"

    .line 252
    .line 253
    const-string v5, "xtreamcodes"

    .line 254
    .line 255
    const-string v6, "otr"

    .line 256
    .line 257
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_1

    .line 262
    .line 263
    const-string v7, "otr_backdrop_path"

    .line 264
    .line 265
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    iput-object v7, p0, Lpe/hf/black20/SeriesActivity;->j0:Ljava/lang/String;

    .line 270
    .line 271
    const-string v7, "otr_plot"

    .line 272
    .line 273
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    iput-object v7, p0, Lpe/hf/black20/SeriesActivity;->k0:Ljava/lang/String;

    .line 278
    .line 279
    :cond_1
    const-string v7, "episode_run_time"

    .line 280
    .line 281
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->i0:Ljava/lang/String;

    .line 286
    .line 287
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->K:Landroid/widget/TextView;

    .line 288
    .line 289
    iget-object v7, p0, Lpe/hf/black20/SeriesActivity;->Z:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    const v3, 0x7f0b02f4

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Landroid/widget/LinearLayout;

    .line 306
    .line 307
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->q0:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    new-instance v3, Lpe/hf/black20/util/b;

    .line 310
    .line 311
    invoke-direct {v3, v1}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 312
    .line 313
    .line 314
    iget v7, v3, Lpe/hf/black20/util/b;->b:F

    .line 315
    .line 316
    float-to-int v7, v7

    .line 317
    iput v7, p0, Lpe/hf/black20/SeriesActivity;->n0:I

    .line 318
    .line 319
    invoke-virtual {v3}, Lpe/hf/black20/util/b;->a()F

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iput v3, p0, Lpe/hf/black20/SeriesActivity;->o0:F

    .line 324
    .line 325
    iget v3, p0, Lpe/hf/black20/SeriesActivity;->n0:I

    .line 326
    .line 327
    div-int/2addr v3, v2

    .line 328
    int-to-double v7, v3

    .line 329
    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    .line 330
    .line 331
    mul-double v7, v7, v9

    .line 332
    .line 333
    double-to-int v2, v7

    .line 334
    iget-object v7, p0, Lpe/hf/black20/SeriesActivity;->R:Landroid/widget/ImageView;

    .line 335
    .line 336
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .line 342
    int-to-float v3, v3

    .line 343
    iget v8, p0, Lpe/hf/black20/SeriesActivity;->o0:F

    .line 344
    .line 345
    mul-float v3, v3, v8

    .line 346
    .line 347
    float-to-int v3, v3

    .line 348
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    .line 350
    int-to-float v2, v2

    .line 351
    mul-float v2, v2, v8

    .line 352
    .line 353
    float-to-int v2, v2

    .line 354
    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 355
    .line 356
    invoke-virtual {v7, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 357
    .line 358
    .line 359
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->R:Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    new-instance v2, Landroid/content/IntentFilter;

    .line 365
    .line 366
    const-string v3, "SeriesActivity_finish_alert"

    .line 367
    .line 368
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    new-instance v3, Lf/G;

    .line 372
    .line 373
    const/16 v7, 0x13

    .line 374
    .line 375
    invoke-direct {v3, p0, v7}, Lf/G;-><init>(Ljava/lang/Object;I)V

    .line 376
    .line 377
    .line 378
    iput-object v3, p0, Lpe/hf/black20/SeriesActivity;->w0:Lf/G;

    .line 379
    .line 380
    const/16 v7, 0x21

    .line 381
    .line 382
    if-lt v0, v7, :cond_2

    .line 383
    .line 384
    const/4 v0, 0x4

    .line 385
    invoke-static {v1, v3, v2, v0}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 386
    .line 387
    .line 388
    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    :goto_0
    sget-object v0, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 393
    .line 394
    const-string v2, ""

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->v0:LN2/a;

    .line 401
    .line 402
    const-string v7, "XCIPTV_TAG"

    .line 403
    .line 404
    const v8, 0x7f0809c4

    .line 405
    .line 406
    .line 407
    if-eqz v0, :cond_3

    .line 408
    .line 409
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const v2, 0x7f08086d

    .line 414
    .line 415
    .line 416
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Lcom/bumptech/glide/l;

    .line 429
    .line 430
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->R:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 441
    .line 442
    .line 443
    goto :goto_1

    .line 444
    :cond_3
    :try_start_0
    sget-object v0, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 445
    .line 446
    const-string v9, " "

    .line 447
    .line 448
    const-string v10, "%20"

    .line 449
    .line 450
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sput-object v0, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 455
    .line 456
    const-string v9, "\\\\"

    .line 457
    .line 458
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    sput-object v0, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 463
    .line 464
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    sget-object v2, Lpe/hf/black20/SeriesActivity;->F0:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Lcom/bumptech/glide/l;

    .line 479
    .line 480
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0, v8}, LL2/a;->m(I)LL2/a;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    check-cast v0, Lcom/bumptech/glide/l;

    .line 493
    .line 494
    invoke-virtual {v0, v8}, LL2/a;->f(I)LL2/a;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Lcom/bumptech/glide/l;

    .line 499
    .line 500
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->R:Landroid/widget/ImageView;

    .line 501
    .line 502
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .line 504
    .line 505
    goto :goto_1

    .line 506
    :catch_0
    const-string v0, "Picasso Crashed"

    .line 507
    .line 508
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    :goto_1
    invoke-static {v4, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_4

    .line 516
    .line 517
    new-instance v0, Lb7/B1;

    .line 518
    .line 519
    invoke-direct {v0, p0}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;)V

    .line 520
    .line 521
    .line 522
    new-array p1, p1, [Ljava/lang/Void;

    .line 523
    .line 524
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    .line 526
    .line 527
    goto/16 :goto_3

    .line 528
    .line 529
    :cond_4
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_6

    .line 534
    .line 535
    const-string v0, "---------------etSeriesDetailsOTR ()"

    .line 536
    .line 537
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->L:Landroid/widget/TextView;

    .line 541
    .line 542
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->k0:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    :try_start_1
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->j0:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Lcom/bumptech/glide/l;

    .line 562
    .line 563
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v0, v8}, LL2/a;->m(I)LL2/a;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Lcom/bumptech/glide/l;

    .line 576
    .line 577
    invoke-virtual {v0, v8}, LL2/a;->f(I)LL2/a;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    check-cast v0, Lcom/bumptech/glide/l;

    .line 582
    .line 583
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 586
    .line 587
    .line 588
    :catch_1
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    .line 589
    .line 590
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->i0:Ljava/lang/String;

    .line 591
    .line 592
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->J:Lc7/a;

    .line 596
    .line 597
    invoke-virtual {v1, v0}, Lc7/a;->e0(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    iput-object v0, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 602
    .line 603
    new-instance v0, Ljava/util/ArrayList;

    .line 604
    .line 605
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .line 607
    .line 608
    iput-object v0, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 609
    .line 610
    const/4 v0, 0x0

    .line 611
    :goto_2
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-ge v0, v1, :cond_5

    .line 618
    .line 619
    new-instance v1, Ljava/util/HashMap;

    .line 620
    .line 621
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 622
    .line 623
    .line 624
    const-string v2, "season_no"

    .line 625
    .line 626
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, Lf7/b;

    .line 633
    .line 634
    iget-object v3, v3, Lf7/b;->a:Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    const-string v2, "episodes"

    .line 640
    .line 641
    iget-object v3, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 642
    .line 643
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    check-cast v3, Lf7/b;

    .line 648
    .line 649
    iget-object v3, v3, Lf7/b;->b:Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    iget-object v2, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 660
    .line 661
    goto :goto_2

    .line 662
    :cond_5
    invoke-virtual {p0}, Lpe/hf/black20/SeriesActivity;->c()V

    .line 663
    .line 664
    .line 665
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-lez v0, :cond_7

    .line 672
    .line 673
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 674
    .line 675
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    check-cast v0, Lf7/b;

    .line 680
    .line 681
    iget-object v0, v0, Lf7/b;->a:Ljava/lang/String;

    .line 682
    .line 683
    iput-object v0, p0, Lpe/hf/black20/SeriesActivity;->m0:Ljava/lang/String;

    .line 684
    .line 685
    new-instance v0, Lorg/json/JSONArray;

    .line 686
    .line 687
    iget-object v1, p0, Lpe/hf/black20/SeriesActivity;->l0:Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    check-cast p1, Lf7/b;

    .line 694
    .line 695
    iget-object p1, p1, Lf7/b;->b:Ljava/lang/String;

    .line 696
    .line 697
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0, v0}, Lpe/hf/black20/SeriesActivity;->b(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 701
    .line 702
    .line 703
    goto :goto_3

    .line 704
    :cond_6
    new-instance v0, Lb7/B1;

    .line 705
    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-direct {v0, p0, v1}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;La/r;)V

    .line 708
    .line 709
    .line 710
    new-array p1, p1, [Ljava/lang/Void;

    .line 711
    .line 712
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    .line 714
    .line 715
    :catch_2
    :cond_7
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/SeriesActivity;->w0:Lf/G;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, LE1/a;->z(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, LE1/a;->A()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, LE1/a;->C()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    or-int/2addr v0, v1

    .line 60
    invoke-static {p1, v0}, LE1/a;->t(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, LE1/a;->s(Landroid/view/WindowInsetsController;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x1002

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xf06

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method
