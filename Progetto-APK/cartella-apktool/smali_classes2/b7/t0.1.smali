.class public Lb7/t0;
.super LY/s;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# static fields
.field public static final synthetic V1:I


# instance fields
.field public A1:Landroid/widget/TextView;

.field public B1:Landroid/widget/TextView;

.field public C0:Landroid/content/SharedPreferences;

.field public C1:Landroid/widget/TextView;

.field public D0:Lc7/a;

.field public D1:Landroid/widget/TextView;

.field public E0:Lc7/d;

.field public E1:Landroid/widget/TextView;

.field public F0:Lh7/i;

.field public F1:Landroid/widget/TextView;

.field public G0:I

.field public G1:Landroid/widget/TextView;

.field public H0:I

.field public H1:Landroid/os/Handler;

.field public I0:I

.field public I1:Lb7/c0;

.field public J0:I

.field public J1:Ljava/lang/String;

.field public K0:I

.field public K1:Ljava/lang/String;

.field public L0:Landroid/widget/TextView;

.field public L1:Ljava/lang/String;

.field public M0:Landroid/widget/TextView;

.field public M1:Lorg/json/JSONObject;

.field public N0:Landroid/widget/ProgressBar;

.field public final N1:LN2/a;

.field public O0:Landroid/widget/ImageView;

.field public O1:Ljava/lang/String;

.field public P0:Landroid/os/Handler;

.field public P1:Ljava/lang/String;

.field public Q0:Lb7/c0;

.field public Q1:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public R1:Ljava/lang/String;

.field public S0:Landroid/widget/ImageButton;

.field public S1:Ljava/lang/String;

.field public T0:Landroid/widget/ImageButton;

.field public T1:Ljava/lang/String;

.field public U0:Landroid/widget/ImageButton;

.field public U1:Ljava/lang/String;

.field public V0:Landroid/widget/ImageButton;

.field public W0:Landroid/widget/ImageButton;

.field public X0:Landroid/widget/ImageButton;

.field public Y0:Landroid/widget/ImageButton;

.field public Z0:Ljava/util/ArrayList;

.field public a1:Landroidx/recyclerview/widget/RecyclerView;

.field public b1:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

.field public c1:Ljava/util/ArrayList;

.field public d1:Landroid/widget/FrameLayout;

.field public e1:Landroid/widget/LinearLayout;

.field public f1:Ljava/util/ArrayList;

.field public g1:Ljava/util/ArrayList;

.field public h1:Ljava/util/ArrayList;

.field public final i1:Ljava/util/ArrayList;

.field public j1:Ljava/util/ArrayList;

.field public final k1:Ljava/util/ArrayList;

.field public l1:Ljava/util/ArrayList;

.field public final m1:Ljava/util/ArrayList;

.field public final n1:Ljava/util/ArrayList;

.field public final o1:Ljava/util/ArrayList;

.field public p1:Landroid/widget/ImageView;

.field public q1:Landroid/widget/TextView;

.field public r1:Landroid/widget/TextView;

.field public s1:Landroid/widget/TextView;

.field public t1:Landroid/widget/TextView;

.field public u1:Landroid/widget/TextView;

.field public v1:Landroid/widget/TextView;

.field public w1:Landroid/widget/TextView;

.field public x1:Landroid/widget/FrameLayout;

.field public y1:Landroid/widget/FrameLayout;

.field public z1:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb7/t0;->P0:Landroid/os/Handler;

    .line 10
    .line 11
    const-string v0, "12"

    .line 12
    .line 13
    iput-object v0, p0, Lb7/t0;->R0:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lb7/t0;->i1:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lb7/t0;->k1:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lb7/t0;->m1:Ljava/util/ArrayList;

    .line 87
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lb7/t0;->n1:Ljava/util/ArrayList;

    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lb7/t0;->o1:Ljava/util/ArrayList;

    .line 101
    .line 102
    const-string v0, ""

    .line 103
    .line 104
    iput-object v0, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v0, p0, Lb7/t0;->K1:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v0, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v1, LN2/a;

    .line 111
    .line 112
    const/16 v2, 0x12c

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    invoke-direct {v1, v2, v3}, LN2/a;-><init>(IZ)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lb7/t0;->N1:LN2/a;

    .line 119
    .line 120
    iput-object v0, p0, Lb7/t0;->O1:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lb7/t0;->P1:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v0, p0, Lb7/t0;->Q1:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, p0, Lb7/t0;->R1:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v0, p0, Lb7/t0;->S1:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v0, p0, Lb7/t0;->T1:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v0, p0, Lb7/t0;->U1:Ljava/lang/String;

    .line 133
    .line 134
    return-void
.end method

.method public static S(Lb7/t0;Ljava/lang/String;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lb7/t0;->a0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 6
    .line 7
    const-string v1, "fav"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "releaseDate"

    .line 14
    .line 15
    const-string v3, "cover"

    .line 16
    .line 17
    const-string v4, "backdrop_path"

    .line 18
    .line 19
    const-string v5, "rating"

    .line 20
    .line 21
    const-string v6, "director"

    .line 22
    .line 23
    const-string v7, "cast"

    .line 24
    .line 25
    const-string v8, "plot"

    .line 26
    .line 27
    const-string v9, "genre"

    .line 28
    .line 29
    const-string v10, "name"

    .line 30
    .line 31
    const-string v11, ""

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lb7/t0;->k1:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    check-cast v10, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    check-cast v10, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Ljava/lang/String;

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_0
    const-string v1, "new"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_1

    .line 154
    .line 155
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    move-object v1, p1

    .line 168
    check-cast v1, Ljava/lang/String;

    .line 169
    .line 170
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    move-object v9, p1

    .line 183
    check-cast v9, Ljava/lang/String;

    .line 184
    .line 185
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    move-object v8, p1

    .line 198
    check-cast v8, Ljava/lang/String;

    .line 199
    .line 200
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    move-object v7, p1

    .line 213
    check-cast v7, Ljava/lang/String;

    .line 214
    .line 215
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Ljava/lang/String;

    .line 228
    .line 229
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    move-object v5, p1

    .line 242
    check-cast v5, Ljava/lang/String;

    .line 243
    .line 244
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Ljava/util/HashMap;

    .line 251
    .line 252
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    move-object v4, p1

    .line 257
    check-cast v4, Ljava/lang/String;

    .line 258
    .line 259
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Ljava/util/HashMap;

    .line 266
    .line 267
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    move-object v3, p1

    .line 272
    check-cast v3, Ljava/lang/String;

    .line 273
    .line 274
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Ljava/util/HashMap;

    .line 281
    .line 282
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Ljava/lang/String;

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_1
    const-string v1, "cont"

    .line 291
    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_2

    .line 297
    .line 298
    iget-object p1, p0, Lb7/t0;->n1:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    check-cast v10, Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    check-cast v9, Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    check-cast v10, Ljava/util/HashMap;

    .line 329
    .line 330
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    check-cast v8, Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    check-cast v10, Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    check-cast v10, Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    check-cast v6, Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    check-cast v6, Ljava/util/HashMap;

    .line 365
    .line 366
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    check-cast v5, Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    check-cast v6, Ljava/util/HashMap;

    .line 377
    .line 378
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    check-cast v6, Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    check-cast v3, Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Ljava/util/HashMap;

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Ljava/lang/String;

    .line 407
    .line 408
    goto :goto_0

    .line 409
    :cond_2
    move-object p1, v11

    .line 410
    move-object v1, p1

    .line 411
    move-object v3, v1

    .line 412
    move-object v4, v3

    .line 413
    move-object v5, v4

    .line 414
    move-object v7, v5

    .line 415
    move-object v8, v7

    .line 416
    move-object v9, v8

    .line 417
    :goto_0
    iget-object v2, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 418
    .line 419
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 423
    .line 424
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-lez v1, :cond_3

    .line 442
    .line 443
    const/4 v1, 0x1

    .line 444
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    move-object v6, v11

    .line 453
    const/4 v2, 0x0

    .line 454
    :goto_1
    if-ge v2, v1, :cond_3

    .line 455
    .line 456
    const-string v7, "\u2b50"

    .line 457
    .line 458
    invoke-static {v6, v7}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    iget-object v7, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 463
    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v10, " ("

    .line 473
    .line 474
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v10, ")"

    .line 481
    .line 482
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v2, v2, 0x1

    .line 493
    .line 494
    goto :goto_1

    .line 495
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    const/16 v2, 0x8

    .line 500
    .line 501
    if-le v1, v2, :cond_4

    .line 502
    .line 503
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    :cond_4
    iget-object v1, p0, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 508
    .line 509
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    .line 511
    .line 512
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    const-string v1, "ORT_isDemo"

    .line 517
    .line 518
    invoke-virtual {p1, v1, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-nez p1, :cond_6

    .line 523
    .line 524
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    if-eqz p1, :cond_5

    .line 529
    .line 530
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    check-cast p1, Lcom/bumptech/glide/l;

    .line 547
    .line 548
    iget-object p0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 549
    .line 550
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 551
    .line 552
    .line 553
    goto :goto_2

    .line 554
    :cond_5
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    check-cast p1, Lcom/bumptech/glide/l;

    .line 571
    .line 572
    iget-object p0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 573
    .line 574
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 575
    .line 576
    .line 577
    goto :goto_2

    .line 578
    :cond_6
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    const/16 v0, 0xc

    .line 591
    .line 592
    const/4 v1, 0x6

    .line 593
    invoke-virtual {p1, v0, v1}, LL2/a;->l(II)LL2/a;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    check-cast p1, Lcom/bumptech/glide/l;

    .line 598
    .line 599
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    check-cast p1, Lcom/bumptech/glide/l;

    .line 604
    .line 605
    iget-object v0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 606
    .line 607
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 608
    .line 609
    .line 610
    iget-object p1, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 611
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string v1, "2131951762"

    .line 615
    .line 616
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p2

    .line 623
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object p2

    .line 630
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    .line 632
    .line 633
    iget-object p1, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 634
    .line 635
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    iget-object p1, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 639
    .line 640
    const p2, 0x7f13008a

    .line 641
    .line 642
    .line 643
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 644
    .line 645
    .line 646
    iget-object p0, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 647
    .line 648
    const p1, 0x7f13008e

    .line 649
    .line 650
    .line 651
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 652
    .line 653
    .line 654
    :goto_2
    return-void
.end method

.method public static T(Lb7/t0;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb7/t0;->a0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 6
    .line 7
    const-string v1, "fav"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "custom_sid"

    .line 14
    .line 15
    const-string v3, "stream_id"

    .line 16
    .line 17
    const-string v4, "stream_icon"

    .line 18
    .line 19
    const-string v5, "name"

    .line 20
    .line 21
    const-string v6, ""

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lb7/t0;->i1:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    iput-object v3, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_0
    const-string v1, "new"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    move-object v4, p1

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/String;

    .line 132
    .line 133
    iput-object p1, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 134
    .line 135
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Ljava/lang/String;

    .line 148
    .line 149
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    const-string v1, "cont"

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_2

    .line 159
    .line 160
    iget-object p1, p0, Lb7/t0;->m1:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Ljava/lang/String;

    .line 197
    .line 198
    iput-object v3, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/HashMap;

    .line 205
    .line 206
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Ljava/lang/String;

    .line 211
    .line 212
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_2
    move-object v1, v6

    .line 216
    move-object v4, v1

    .line 217
    :goto_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string v2, "ORT_isDemo"

    .line 222
    .line 223
    invoke-virtual {p1, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_5

    .line 228
    .line 229
    iget-object p1, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_3

    .line 239
    .line 240
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lcom/bumptech/glide/l;

    .line 257
    .line 258
    iget-object p2, p0, Lb7/t0;->N1:LN2/a;

    .line 259
    .line 260
    invoke-static {p2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p2, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 271
    .line 272
    .line 273
    :cond_3
    iget-object p1, p0, Lb7/t0;->I1:Lb7/c0;

    .line 274
    .line 275
    if-eqz p1, :cond_4

    .line 276
    .line 277
    iget-object p2, p0, Lb7/t0;->H1:Landroid/os/Handler;

    .line 278
    .line 279
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lb7/t0;->H1:Landroid/os/Handler;

    .line 283
    .line 284
    const/4 p2, 0x0

    .line 285
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_4
    new-instance p1, Landroid/os/Handler;

    .line 289
    .line 290
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 291
    .line 292
    .line 293
    iput-object p1, p0, Lb7/t0;->H1:Landroid/os/Handler;

    .line 294
    .line 295
    new-instance p2, Lb7/c0;

    .line 296
    .line 297
    const/4 v0, 0x2

    .line 298
    invoke-direct {p2, p0, v0}, Lb7/c0;-><init>(Lb7/t0;I)V

    .line 299
    .line 300
    .line 301
    iput-object p2, p0, Lb7/t0;->I1:Lb7/c0;

    .line 302
    .line 303
    const-wide/16 v0, 0x3e8

    .line 304
    .line 305
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_5
    iget-object p1, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v1, "2131951757"

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 333
    .line 334
    const p2, 0x7f13008b

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 341
    .line 342
    const p2, 0x7f13008a

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 346
    .line 347
    .line 348
    iget-object p1, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 349
    .line 350
    const p2, 0x7f13008e

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lb7/t0;->v1:Landroid/widget/TextView;

    .line 357
    .line 358
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 362
    .line 363
    const p2, 0x7f13008c

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 370
    .line 371
    const p2, 0x7f130091

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/bumptech/glide/l;

    .line 394
    .line 395
    const/16 p2, 0xb

    .line 396
    .line 397
    const/4 v0, 0x6

    .line 398
    invoke-virtual {p1, p2, v0}, LL2/a;->l(II)LL2/a;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Lcom/bumptech/glide/l;

    .line 403
    .line 404
    iget-object p0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 407
    .line 408
    .line 409
    :goto_1
    return-void
.end method

.method public static U(Lb7/t0;Ljava/lang/String;I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "fav"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "releaseDate"

    .line 11
    .line 12
    const-string v2, "backdrop_path"

    .line 13
    .line 14
    const-string v3, "rating"

    .line 15
    .line 16
    const-string v4, "director"

    .line 17
    .line 18
    const-string v5, "cast"

    .line 19
    .line 20
    const-string v6, "plot"

    .line 21
    .line 22
    const-string v7, "genre"

    .line 23
    .line 24
    const-string v8, "episode_run_time"

    .line 25
    .line 26
    const-string v9, "series_id"

    .line 27
    .line 28
    const-string v10, "cover"

    .line 29
    .line 30
    const-string v11, "name"

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lb7/t0;->k1:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    check-cast v12, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Ljava/lang/String;

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_0
    const-string v0, "new"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    .line 178
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    move-object v0, p1

    .line 191
    check-cast v0, Ljava/lang/String;

    .line 192
    .line 193
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    move-object v7, p1

    .line 206
    check-cast v7, Ljava/lang/String;

    .line 207
    .line 208
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/lang/String;

    .line 221
    .line 222
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Ljava/lang/String;

    .line 235
    .line 236
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Ljava/lang/String;

    .line 249
    .line 250
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    move-object v3, p1

    .line 263
    check-cast v3, Ljava/lang/String;

    .line 264
    .line 265
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/lang/String;

    .line 278
    .line 279
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    move-object v2, p1

    .line 292
    check-cast v2, Ljava/lang/String;

    .line 293
    .line 294
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Ljava/util/HashMap;

    .line 301
    .line 302
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    move-object v1, p1

    .line 307
    check-cast v1, Ljava/lang/String;

    .line 308
    .line 309
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    check-cast p1, Ljava/util/HashMap;

    .line 316
    .line 317
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    move-object v4, p1

    .line 322
    check-cast v4, Ljava/lang/String;

    .line 323
    .line 324
    iget-object p1, p0, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Ljava/util/HashMap;

    .line 331
    .line 332
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Ljava/lang/String;

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_1
    const-string v0, "cont"

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-eqz p1, :cond_2

    .line 347
    .line 348
    iget-object p1, p0, Lb7/t0;->n1:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v12

    .line 366
    check-cast v12, Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    check-cast v7, Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    check-cast v12, Ljava/util/HashMap;

    .line 379
    .line 380
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    check-cast v6, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    check-cast v6, Ljava/util/HashMap;

    .line 391
    .line 392
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    check-cast v5, Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    check-cast v5, Ljava/util/HashMap;

    .line 403
    .line 404
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    check-cast v4, Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Ljava/util/HashMap;

    .line 415
    .line 416
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Ljava/util/HashMap;

    .line 427
    .line 428
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    check-cast v2, Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    check-cast v4, Ljava/util/HashMap;

    .line 451
    .line 452
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    check-cast v4, Ljava/util/HashMap;

    .line 463
    .line 464
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    check-cast v4, Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    check-cast p1, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    check-cast p1, Ljava/lang/String;

    .line 481
    .line 482
    goto :goto_0

    .line 483
    :cond_2
    const-string v0, ""

    .line 484
    .line 485
    move-object p1, v0

    .line 486
    move-object v1, p1

    .line 487
    move-object v2, v1

    .line 488
    move-object v3, v2

    .line 489
    move-object v4, v3

    .line 490
    move-object v7, v4

    .line 491
    :goto_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 492
    .line 493
    .line 494
    move-result-object p2

    .line 495
    const-string v5, "ORT_WHICH_CAT"

    .line 496
    .line 497
    const-string v6, "SERIES"

    .line 498
    .line 499
    invoke-virtual {p2, v5, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 500
    .line 501
    .line 502
    new-instance p2, Landroid/content/Intent;

    .line 503
    .line 504
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    const-class v6, Lpe/hf/black20/SeriesActivity;

    .line 509
    .line 510
    invoke-direct {p2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    new-instance p1, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const v2, 0x7f13020a

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v0, ": "

    .line 545
    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v2, "  "

    .line 553
    .line 554
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    const v3, 0x7f1301d0

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v2, " "

    .line 578
    .line 579
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    const v3, 0x7f1301be

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    const-string v0, "program_desc"

    .line 607
    .line 608
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 616
    .line 617
    .line 618
    return-void
.end method

.method public static V(Lb7/t0;Ljava/lang/String;I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "ORT_PROFILE_USERNAME"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ORT_PROFILE_PASSWORD"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "fav"

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "custom_sid"

    .line 33
    .line 34
    const-string v5, "container_extension"

    .line 35
    .line 36
    const-string v6, "direct_source"

    .line 37
    .line 38
    const-string v7, "stream_id"

    .line 39
    .line 40
    const-string v8, "stream_icon"

    .line 41
    .line 42
    const-string v9, "name"

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lb7/t0;->i1:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    check-cast v11, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    check-cast v11, Ljava/lang/String;

    .line 83
    .line 84
    iput-object v11, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_0
    const-string v3, "new"

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    .line 134
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    move-object v3, p1

    .line 147
    check-cast v3, Ljava/lang/String;

    .line 148
    .line 149
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    move-object v10, p1

    .line 162
    check-cast v10, Ljava/lang/String;

    .line 163
    .line 164
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/String;

    .line 177
    .line 178
    iput-object p1, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 179
    .line 180
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    move-object v6, p1

    .line 193
    check-cast v6, Ljava/lang/String;

    .line 194
    .line 195
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    move-object v5, p1

    .line 208
    check-cast v5, Ljava/lang/String;

    .line 209
    .line 210
    iget-object p1, p0, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Ljava/util/HashMap;

    .line 217
    .line 218
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Ljava/lang/String;

    .line 223
    .line 224
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_1
    const-string v3, "cont"

    .line 228
    .line 229
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_2

    .line 234
    .line 235
    iget-object p1, p0, Lb7/t0;->m1:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    check-cast v11, Ljava/util/HashMap;

    .line 266
    .line 267
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    check-cast v11, Ljava/lang/String;

    .line 272
    .line 273
    iput-object v11, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    check-cast v11, Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    check-cast v11, Ljava/util/HashMap;

    .line 292
    .line 293
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Ljava/util/HashMap;

    .line 304
    .line 305
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Ljava/lang/String;

    .line 310
    .line 311
    iput-object p1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_2
    move-object v3, v2

    .line 315
    move-object v5, v3

    .line 316
    move-object v6, v5

    .line 317
    move-object v10, v6

    .line 318
    :goto_0
    const-string p1, "ORT_VOD_PORTAL"

    .line 319
    .line 320
    const-string v4, "no"

    .line 321
    .line 322
    invoke-static {p1, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    const-string v12, "ORT_PROFILE_SERVER"

    .line 327
    .line 328
    if-nez v11, :cond_3

    .line 329
    .line 330
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v11, p1, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    goto :goto_1

    .line 339
    :cond_3
    invoke-static {v12, v2}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p1, "/movie/"

    .line 352
    .line 353
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string p1, "/"

    .line 360
    .line 361
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v1, "ORT_WHICH_CAT"

    .line 379
    .line 380
    const-string v4, "VOD"

    .line 381
    .line 382
    invoke-virtual {v0, v1, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 383
    .line 384
    .line 385
    new-instance v0, Landroid/content/Intent;

    .line 386
    .line 387
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const-class v4, Lpe/hf/black20/MovieInfoActivity;

    .line 392
    .line 393
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    iget-object v1, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    const-string v3, "streamurl"

    .line 412
    .line 413
    if-eqz v1, :cond_4

    .line 414
    .line 415
    invoke-static {p1}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    iget-object v1, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 420
    .line 421
    const-string v4, "."

    .line 422
    .line 423
    invoke-static {p1, v1, v4, v5}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    goto :goto_2

    .line 431
    :cond_4
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    :goto_2
    const-string p1, "ORT_WHICH_PANEL"

    .line 435
    .line 436
    const-string v1, "xtreamcodes"

    .line 437
    .line 438
    const-string v3, "ezserver"

    .line 439
    .line 440
    invoke-static {p1, v1, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_6

    .line 445
    .line 446
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_5

    .line 451
    .line 452
    const-string v3, " "

    .line 453
    .line 454
    const-string v4, "%20"

    .line 455
    .line 456
    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    const-string v4, "\\\\"

    .line 461
    .line 462
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v4, v12, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const-string v4, "http://:"

    .line 479
    .line 480
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    :cond_5
    const-string v3, "poster"

    .line 485
    .line 486
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    .line 488
    .line 489
    :cond_6
    const-string v2, "otr"

    .line 490
    .line 491
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_7

    .line 496
    .line 497
    const-string p1, "packageid"

    .line 498
    .line 499
    iget-object v1, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    .line 503
    .line 504
    :cond_7
    const-string p1, "position"

    .line 505
    .line 506
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 518
    .line 519
    .line 520
    return-void
.end method

.method public static W(Lb7/t0;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lb7/t0;->y1:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget v0, p0, Lb7/t0;->G0:I

    .line 29
    .line 30
    div-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    iget v1, p0, Lb7/t0;->I0:I

    .line 33
    .line 34
    mul-int/lit8 v1, v1, 0x32

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    filled-new-array {p1, v0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lb7/t0;->y1:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x0

    .line 53
    filled-new-array {p1, v0}, [I

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    new-instance v0, Lb7/d0;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-direct {v0, p0, v1}, Lb7/d0;-><init>(Lb7/t0;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x1f4

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public static X(Lb7/t0;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lb7/t0;->x1:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v1, p0, Lb7/t0;->G0:I

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    iget v2, p0, Lb7/t0;->I0:I

    .line 34
    .line 35
    mul-int/lit8 v2, v2, 0x28

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    filled-new-array {p1, v1}, [I

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lb7/t0;->x1:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    filled-new-array {p1, v0}, [I

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    new-instance v1, Lb7/d0;

    .line 62
    .line 63
    invoke-direct {v1, p0, v0}, Lb7/d0;-><init>(Lb7/t0;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v0, 0x1f4

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isORPlayerHomeFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "ORT_isORPlayerHomeFragmentVisible"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v1, "xciptv_profile"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "ORT_PROFILE"

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v4, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v3, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lb7/t0;->D0:Lc7/a;

    .line 40
    .line 41
    const-string v1, "Default (XC)"

    .line 42
    .line 43
    invoke-static {v3, v1, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lb7/t0;->F0:Lh7/i;

    .line 48
    .line 49
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lb7/t0;->F0:Lh7/i;

    .line 54
    .line 55
    iget-object v1, v1, Lh7/i;->a:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "ORT_PROFILE_ID"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 60
    .line 61
    .line 62
    sget-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 68
    .line 69
    iget-object v1, p0, Lb7/t0;->N0:Landroid/widget/ProgressBar;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lb7/t0;->O0:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/lang/Thread;

    .line 80
    .line 81
    new-instance v3, Lb7/c0;

    .line 82
    .line 83
    invoke-direct {v3, p0, v0}, Lb7/c0;-><init>(Lb7/t0;I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 93
    .line 94
    const-string v1, "tvvodseries_dl_time"

    .line 95
    .line 96
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    const-string v0, "ORT_WHICH_PANEL"

    .line 103
    .line 104
    const-string v1, "xtreamcodes"

    .line 105
    .line 106
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    const-string v0, "------------hr--"

    .line 113
    .line 114
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v3, "ORT_PROCESS_STATUS"

    .line 119
    .line 120
    invoke-virtual {v1, v3}, LQ5/a;->b(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    iget-object v1, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 127
    .line 128
    const-string v3, "epg_dl_time"

    .line 129
    .line 130
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const-string v4, "ORPlayerHomeFragment - EPG Need to download"

    .line 135
    .line 136
    const-string v5, "XCIPTV_TAG"

    .line 137
    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 141
    .line 142
    const-string v6, "MM/dd/yyyy HH:mm:ss"

    .line 143
    .line 144
    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Ljava/util/Date;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iget-object v8, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 161
    .line 162
    invoke-interface {v8, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1, v7}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v7}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/16 v1, 0xc

    .line 198
    .line 199
    if-le v0, v1, :cond_2

    .line 200
    .line 201
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 205
    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Ll7/g;->b(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "ORPlayerHomeFragment - Skipping EPG Download. EPG Downloaded Less than 12 hrs ago."

    .line 228
    .line 229
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_3
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Ll7/g;->b(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isORPlayerHomeFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Y()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "------calling GetMovieInfoOTR--------------------"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "XCIPTV_TAG"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v8, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "ORT_VOD_PORTAL"

    .line 28
    .line 29
    const-string v2, "no"

    .line 30
    .line 31
    invoke-static {v0, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v0, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lb7/t0;->F0:Lh7/i;

    .line 47
    .line 48
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    iget-object v2, p0, Lb7/t0;->F0:Lh7/i;

    .line 55
    .line 56
    iget-object v2, v2, Lh7/i;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget-object v2, p0, Lb7/t0;->F0:Lh7/i;

    .line 63
    .line 64
    iget-object v2, v2, Lh7/i;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const-string v2, "/panel_pro/api/client/content/"

    .line 71
    .line 72
    invoke-static {v0, v2}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lb7/t0;->L1:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "/vod/"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lb7/t0;->J1:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/i6;

    .line 96
    .line 97
    const-string v6, "otrresponse"

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    move-object v4, p0

    .line 101
    move-object v5, p0

    .line 102
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILY/s;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    const-string v0, "ORPlayerHomeFragment - OTR Panel Client Devices - VolleyGETStringRequest Error"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "Loading Program Details from TV Guide..."

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb7/t0;->B1:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lb7/t0;->C1:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lb7/t0;->D1:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lb7/t0;->E1:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lb7/t0;->F1:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb7/t0;->v1:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final b0(Lorg/json/JSONObject;)V
    .locals 12

    .line 1
    const-string v0, "user_score"

    .line 2
    .line 3
    const-string v1, "vod"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "data"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "background_url"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "preview_icon"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "trailer_url"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "directors"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "cast"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "genres"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 70
    .line 71
    .line 72
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    const-string v7, ", "

    .line 74
    .line 75
    const-string v8, ""

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v10, v8

    .line 79
    if-lez v6, :cond_1

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-ge v6, v11, :cond_1

    .line 87
    .line 88
    if-nez v6, :cond_0

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    move-object v6, v8

    .line 125
    if-lez v4, :cond_3

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-ge v4, v11, :cond_3

    .line 133
    .line 134
    if-nez v4, :cond_2

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    goto :goto_3

    .line 141
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-lez v4, :cond_4

    .line 171
    .line 172
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move-object v3, v8

    .line 178
    :goto_4
    iget-object v4, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const-string v7, "display_name"

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v7, "description"

    .line 200
    .line 201
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v4, p0, Lb7/t0;->v1:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    if-lez v4, :cond_5

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    :try_start_2
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    :goto_5
    if-ge v9, v3, :cond_6

    .line 247
    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v5, "\u2b50"

    .line 257
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    iget-object v4, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v6, " ("

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v6, ")"

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :catch_0
    :try_start_3
    iget-object v3, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_5
    iget-object v3, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_6
    :goto_6
    iget-object v0, p0, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const-string v1, "prime_date"

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .line 351
    .line 352
    :try_start_4
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Lcom/bumptech/glide/l;

    .line 369
    .line 370
    iget-object v0, p0, Lb7/t0;->N1:LN2/a;

    .line 371
    .line 372
    invoke-static {v0}, LG2/c;->b(LN2/a;)LG2/c;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    const v0, 0x7f08053b

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, LL2/a;->f(I)LL2/a;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Lcom/bumptech/glide/l;

    .line 388
    .line 389
    invoke-virtual {p1, v0}, LL2/a;->m(I)LL2/a;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/bumptech/glide/l;

    .line 394
    .line 395
    iget-object v0, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :catch_1
    :try_start_5
    const-string p1, "XCIPTV_TAG"

    .line 402
    .line 403
    const-string v0, "Picasso Crashed"

    .line 404
    .line 405
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 406
    .line 407
    .line 408
    :catch_2
    :goto_7
    return-void
.end method

.method public final c0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "data"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "refresh_token"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "otr_refresh_token"

    .line 32
    .line 33
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    const-string v1, "otr_access_token"

    .line 41
    .line 42
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lb7/t0;->Y()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_0
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p2, "otrresponse"

    .line 5
    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p2, "XCIPTV_TAG"

    .line 14
    .line 15
    const-string p3, "ORPlayerHomeFragment -- onFailureJsonFastoGT renewToken"

    .line 16
    .line 17
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x191

    .line 21
    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, p0, p0}, LS3/e;->m(Landroid/content/Context;LY/s;Lg7/c;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "renewToken"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "XCIPTV_TAG"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "otrresponse"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lb7/t0;->b0(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const-string p1, "ORPlayerHomeFragment -- loginCheckOTR"

    .line 28
    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lb7/t0;->c0(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    const-string p1, "ORPlayerHomeFragment -- renew Token"

    .line 38
    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    const v0, 0x7f0e0083

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "pe.hf.black20"

    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    new-instance p2, Lc7/d;

    .line 22
    .line 23
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p2, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lb7/t0;->E0:Lc7/d;

    .line 31
    .line 32
    new-instance p2, Lc7/a;

    .line 33
    .line 34
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lb7/t0;->D0:Lc7/a;

    .line 42
    .line 43
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .line 47
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v2, 0x1e

    .line 51
    .line 52
    if-lt v0, v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lb7/Z;->g(LY/v;)Landroid/view/Display;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 97
    .line 98
    iput v0, p0, Lb7/t0;->G0:I

    .line 99
    .line 100
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 101
    .line 102
    iput v0, p0, Lb7/t0;->H0:I

    .line 103
    .line 104
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 105
    .line 106
    div-int/lit16 p2, p2, 0xa0

    .line 107
    .line 108
    iput p2, p0, Lb7/t0;->I0:I

    .line 109
    .line 110
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/16 v0, 0x8

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    .line 118
    .line 119
    if-nez p2, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    iget p2, p0, Lb7/t0;->G0:I

    .line 133
    .line 134
    div-int/2addr p2, v2

    .line 135
    iget v5, p0, Lb7/t0;->I0:I

    .line 136
    .line 137
    mul-int/lit8 v5, v5, 0xa

    .line 138
    .line 139
    sub-int/2addr p2, v5

    .line 140
    int-to-double v5, p2

    .line 141
    mul-double v5, v5, v3

    .line 142
    .line 143
    double-to-int v3, v5

    .line 144
    iput v3, p0, Lb7/t0;->K0:I

    .line 145
    .line 146
    iput p2, p0, Lb7/t0;->J0:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    :goto_1
    iget p2, p0, Lb7/t0;->H0:I

    .line 150
    .line 151
    div-int/2addr p2, v0

    .line 152
    iget v5, p0, Lb7/t0;->I0:I

    .line 153
    .line 154
    mul-int/lit8 v5, v5, 0xa

    .line 155
    .line 156
    sub-int/2addr p2, v5

    .line 157
    int-to-double v5, p2

    .line 158
    mul-double v5, v5, v3

    .line 159
    .line 160
    double-to-int v3, v5

    .line 161
    iput v3, p0, Lb7/t0;->K0:I

    .line 162
    .line 163
    iput p2, p0, Lb7/t0;->J0:I

    .line 164
    .line 165
    :goto_2
    const p2, 0x7f0b0525

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroid/widget/TextView;

    .line 173
    .line 174
    iput-object p2, p0, Lb7/t0;->L0:Landroid/widget/TextView;

    .line 175
    .line 176
    const p2, 0x7f0b0580

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Landroid/widget/TextView;

    .line 184
    .line 185
    iput-object p2, p0, Lb7/t0;->M0:Landroid/widget/TextView;

    .line 186
    .line 187
    const p2, 0x7f0b03d8

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Landroid/widget/ProgressBar;

    .line 195
    .line 196
    iput-object p2, p0, Lb7/t0;->N0:Landroid/widget/ProgressBar;

    .line 197
    .line 198
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    const p2, 0x7f0b033e

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Landroid/widget/ImageView;

    .line 209
    .line 210
    iput-object p2, p0, Lb7/t0;->O0:Landroid/widget/ImageView;

    .line 211
    .line 212
    const p2, 0x7f0b00ed

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    check-cast p2, Landroid/widget/ImageButton;

    .line 220
    .line 221
    iput-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 222
    .line 223
    const p2, 0x7f0b00f1

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Landroid/widget/ImageButton;

    .line 231
    .line 232
    iput-object p2, p0, Lb7/t0;->T0:Landroid/widget/ImageButton;

    .line 233
    .line 234
    const p2, 0x7f0b0112

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    check-cast p2, Landroid/widget/ImageButton;

    .line 242
    .line 243
    iput-object p2, p0, Lb7/t0;->U0:Landroid/widget/ImageButton;

    .line 244
    .line 245
    const p2, 0x7f0b0133

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    check-cast p2, Landroid/widget/ImageButton;

    .line 253
    .line 254
    iput-object p2, p0, Lb7/t0;->V0:Landroid/widget/ImageButton;

    .line 255
    .line 256
    const p2, 0x7f0b010f

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    check-cast p2, Landroid/widget/ImageButton;

    .line 264
    .line 265
    iput-object p2, p0, Lb7/t0;->W0:Landroid/widget/ImageButton;

    .line 266
    .line 267
    const p2, 0x7f0b00c9

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    check-cast p2, Landroid/widget/ImageButton;

    .line 275
    .line 276
    iput-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 277
    .line 278
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    const p2, 0x7f0b00da

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    check-cast p2, Landroid/widget/ImageButton;

    .line 289
    .line 290
    iput-object p2, p0, Lb7/t0;->Y0:Landroid/widget/ImageButton;

    .line 291
    .line 292
    const p2, 0x7f0b02f0

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    check-cast p2, Landroid/widget/FrameLayout;

    .line 300
    .line 301
    iput-object p2, p0, Lb7/t0;->d1:Landroid/widget/FrameLayout;

    .line 302
    .line 303
    const p2, 0x7f0b02da

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    check-cast p2, Landroid/widget/FrameLayout;

    .line 311
    .line 312
    iput-object p2, p0, Lb7/t0;->x1:Landroid/widget/FrameLayout;

    .line 313
    .line 314
    const p2, 0x7f0b02c0

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    check-cast p2, Landroid/widget/FrameLayout;

    .line 322
    .line 323
    iput-object p2, p0, Lb7/t0;->z1:Landroid/widget/FrameLayout;

    .line 324
    .line 325
    const p2, 0x7f0b0584

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    check-cast p2, Landroid/widget/TextView;

    .line 333
    .line 334
    iput-object p2, p0, Lb7/t0;->q1:Landroid/widget/TextView;

    .line 335
    .line 336
    const p2, 0x7f0b0569

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    check-cast p2, Landroid/widget/TextView;

    .line 344
    .line 345
    iput-object p2, p0, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 346
    .line 347
    const p2, 0x7f0b052b

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    check-cast p2, Landroid/widget/TextView;

    .line 355
    .line 356
    iput-object p2, p0, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 357
    .line 358
    const p2, 0x7f0b053f

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Landroid/widget/TextView;

    .line 366
    .line 367
    iput-object p2, p0, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 368
    .line 369
    const p2, 0x7f0b0564

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    check-cast p2, Landroid/widget/TextView;

    .line 377
    .line 378
    iput-object p2, p0, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 379
    .line 380
    const p2, 0x7f0b052a

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    check-cast p2, Landroid/widget/TextView;

    .line 388
    .line 389
    iput-object p2, p0, Lb7/t0;->v1:Landroid/widget/TextView;

    .line 390
    .line 391
    const p2, 0x7f0b050e

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    check-cast p2, Landroid/widget/TextView;

    .line 399
    .line 400
    iput-object p2, p0, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 401
    .line 402
    const p2, 0x7f0b0288

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    check-cast p2, Landroid/widget/ImageView;

    .line 410
    .line 411
    iput-object p2, p0, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 412
    .line 413
    const p2, 0x7f0b02d2

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    check-cast p2, Landroid/widget/FrameLayout;

    .line 421
    .line 422
    iput-object p2, p0, Lb7/t0;->y1:Landroid/widget/FrameLayout;

    .line 423
    .line 424
    const p2, 0x7f0b055a

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    check-cast p2, Landroid/widget/TextView;

    .line 432
    .line 433
    iput-object p2, p0, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 434
    .line 435
    const p2, 0x7f0b055b

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 439
    .line 440
    .line 441
    move-result-object p2

    .line 442
    check-cast p2, Landroid/widget/TextView;

    .line 443
    .line 444
    iput-object p2, p0, Lb7/t0;->B1:Landroid/widget/TextView;

    .line 445
    .line 446
    const p2, 0x7f0b0559

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object p2

    .line 453
    check-cast p2, Landroid/widget/TextView;

    .line 454
    .line 455
    iput-object p2, p0, Lb7/t0;->C1:Landroid/widget/TextView;

    .line 456
    .line 457
    const p2, 0x7f0b0557

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    check-cast p2, Landroid/widget/TextView;

    .line 465
    .line 466
    iput-object p2, p0, Lb7/t0;->D1:Landroid/widget/TextView;

    .line 467
    .line 468
    const p2, 0x7f0b0558

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    check-cast p2, Landroid/widget/TextView;

    .line 476
    .line 477
    iput-object p2, p0, Lb7/t0;->E1:Landroid/widget/TextView;

    .line 478
    .line 479
    const p2, 0x7f0b0556

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    check-cast p2, Landroid/widget/TextView;

    .line 487
    .line 488
    iput-object p2, p0, Lb7/t0;->F1:Landroid/widget/TextView;

    .line 489
    .line 490
    const p2, 0x7f0b051c

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object p2

    .line 497
    check-cast p2, Landroid/widget/TextView;

    .line 498
    .line 499
    iput-object p2, p0, Lb7/t0;->G1:Landroid/widget/TextView;

    .line 500
    .line 501
    const p2, 0x7f0b02ff

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    check-cast p2, Landroid/widget/LinearLayout;

    .line 509
    .line 510
    iput-object p2, p0, Lb7/t0;->e1:Landroid/widget/LinearLayout;

    .line 511
    .line 512
    const p2, 0x7f0b0421

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 520
    .line 521
    iput-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 522
    .line 523
    new-instance p2, Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 524
    .line 525
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 526
    .line 527
    .line 528
    const/4 v3, 0x1

    .line 529
    invoke-direct {p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 530
    .line 531
    .line 532
    iput-object p2, p0, Lb7/t0;->b1:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 533
    .line 534
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->r1(Z)V

    .line 535
    .line 536
    .line 537
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 538
    .line 539
    iget-object v4, p0, Lb7/t0;->b1:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 540
    .line 541
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 542
    .line 543
    .line 544
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 545
    .line 546
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 547
    .line 548
    .line 549
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 550
    .line 551
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 552
    .line 553
    .line 554
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 555
    .line 556
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 557
    .line 558
    .line 559
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 560
    .line 561
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 562
    .line 563
    .line 564
    iget p2, p0, Lb7/t0;->G0:I

    .line 565
    .line 566
    const/4 v4, 0x2

    .line 567
    div-int/2addr p2, v4

    .line 568
    iget v5, p0, Lb7/t0;->I0:I

    .line 569
    .line 570
    mul-int/lit8 v5, v5, 0x28

    .line 571
    .line 572
    sub-int/2addr p2, v5

    .line 573
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    if-nez v5, :cond_4

    .line 582
    .line 583
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    if-eqz v5, :cond_3

    .line 588
    .line 589
    goto :goto_3

    .line 590
    :cond_3
    iget-object p2, p0, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 591
    .line 592
    iget v5, p0, Lb7/t0;->I0:I

    .line 593
    .line 594
    mul-int/lit8 v5, v5, 0xa

    .line 595
    .line 596
    invoke-virtual {p2, v1, v5, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 597
    .line 598
    .line 599
    goto :goto_4

    .line 600
    :cond_4
    :goto_3
    iget-object v5, p0, Lb7/t0;->z1:Landroid/widget/FrameLayout;

    .line 601
    .line 602
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 607
    .line 608
    iput p2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 609
    .line 610
    int-to-double v6, p2

    .line 611
    const-wide v8, 0x3ffc51eb851eb852L    # 1.77

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    mul-double v6, v6, v8

    .line 617
    .line 618
    double-to-int v6, v6

    .line 619
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 620
    .line 621
    iget-object v6, p0, Lb7/t0;->z1:Landroid/widget/FrameLayout;

    .line 622
    .line 623
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .line 625
    .line 626
    iget-object v5, p0, Lb7/t0;->e1:Landroid/widget/LinearLayout;

    .line 627
    .line 628
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    .line 634
    iget v6, p0, Lb7/t0;->H0:I

    .line 635
    .line 636
    div-int/2addr v6, v4

    .line 637
    iget v7, p0, Lb7/t0;->I0:I

    .line 638
    .line 639
    mul-int/lit8 v7, v7, 0x28

    .line 640
    .line 641
    add-int/2addr v7, v6

    .line 642
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 643
    .line 644
    iput p2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 645
    .line 646
    iget-object p2, p0, Lb7/t0;->e1:Landroid/widget/LinearLayout;

    .line 647
    .line 648
    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    .line 650
    .line 651
    :goto_4
    const-string p2, "ORT_WHICH_PANEL"

    .line 652
    .line 653
    const-string v5, "xtreamcodes"

    .line 654
    .line 655
    invoke-static {p2, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v6

    .line 659
    if-eqz v6, :cond_5

    .line 660
    .line 661
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 662
    .line 663
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    goto :goto_5

    .line 667
    :cond_5
    const-string v6, "ezserver"

    .line 668
    .line 669
    invoke-static {p2, v5, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    if-eqz p2, :cond_6

    .line 674
    .line 675
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 676
    .line 677
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    :cond_6
    :goto_5
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 681
    .line 682
    const-string v5, "time_format"

    .line 683
    .line 684
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result p2

    .line 688
    const/4 v6, 0x0

    .line 689
    if-eqz p2, :cond_7

    .line 690
    .line 691
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 692
    .line 693
    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object p2

    .line 697
    const-string v5, "24"

    .line 698
    .line 699
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result p2

    .line 703
    if-eqz p2, :cond_7

    .line 704
    .line 705
    iput-object v5, p0, Lb7/t0;->R0:Ljava/lang/String;

    .line 706
    .line 707
    :cond_7
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 708
    .line 709
    new-instance v5, Lb7/b0;

    .line 710
    .line 711
    invoke-direct {v5, p0, v4}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    .line 716
    .line 717
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 718
    .line 719
    new-instance v5, Lb7/a0;

    .line 720
    .line 721
    invoke-direct {v5, p0, v2}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 725
    .line 726
    .line 727
    iget-object p2, p0, Lb7/t0;->T0:Landroid/widget/ImageButton;

    .line 728
    .line 729
    new-instance v5, Lb7/b0;

    .line 730
    .line 731
    invoke-direct {v5, p0, v2}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    .line 736
    .line 737
    iget-object p2, p0, Lb7/t0;->T0:Landroid/widget/ImageButton;

    .line 738
    .line 739
    new-instance v2, Lb7/a0;

    .line 740
    .line 741
    const/4 v5, 0x4

    .line 742
    invoke-direct {v2, p0, v5}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 746
    .line 747
    .line 748
    iget-object p2, p0, Lb7/t0;->U0:Landroid/widget/ImageButton;

    .line 749
    .line 750
    new-instance v2, Lb7/b0;

    .line 751
    .line 752
    invoke-direct {v2, p0, v5}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    .line 757
    .line 758
    iget-object p2, p0, Lb7/t0;->U0:Landroid/widget/ImageButton;

    .line 759
    .line 760
    new-instance v2, Lb7/a0;

    .line 761
    .line 762
    const/4 v5, 0x5

    .line 763
    invoke-direct {v2, p0, v5}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 767
    .line 768
    .line 769
    iget-object p2, p0, Lb7/t0;->V0:Landroid/widget/ImageButton;

    .line 770
    .line 771
    new-instance v2, Lb7/b0;

    .line 772
    .line 773
    invoke-direct {v2, p0, v5}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    .line 778
    .line 779
    iget-object p2, p0, Lb7/t0;->V0:Landroid/widget/ImageButton;

    .line 780
    .line 781
    new-instance v2, Lb7/a0;

    .line 782
    .line 783
    const/4 v5, 0x6

    .line 784
    invoke-direct {v2, p0, v5}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 788
    .line 789
    .line 790
    iget-object p2, p0, Lb7/t0;->W0:Landroid/widget/ImageButton;

    .line 791
    .line 792
    new-instance v2, Lb7/b0;

    .line 793
    .line 794
    invoke-direct {v2, p0, v5}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    iget-object p2, p0, Lb7/t0;->W0:Landroid/widget/ImageButton;

    .line 801
    .line 802
    new-instance v2, Lb7/a0;

    .line 803
    .line 804
    invoke-direct {v2, p0, v1}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 808
    .line 809
    .line 810
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 811
    .line 812
    new-instance v2, Lb7/b0;

    .line 813
    .line 814
    invoke-direct {v2, p0, v1}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    .line 819
    .line 820
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 821
    .line 822
    new-instance v2, Lb7/a0;

    .line 823
    .line 824
    invoke-direct {v2, p0, v3}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 828
    .line 829
    .line 830
    iget-object p2, p0, Lb7/t0;->Y0:Landroid/widget/ImageButton;

    .line 831
    .line 832
    new-instance v2, Lb7/b0;

    .line 833
    .line 834
    invoke-direct {v2, p0, v3}, Lb7/b0;-><init>(Lb7/t0;I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    .line 839
    .line 840
    iget-object p2, p0, Lb7/t0;->Y0:Landroid/widget/ImageButton;

    .line 841
    .line 842
    new-instance v2, Lb7/a0;

    .line 843
    .line 844
    invoke-direct {v2, p0, v4}, Lb7/a0;-><init>(Lb7/t0;I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 848
    .line 849
    .line 850
    new-instance p2, Landroid/os/Handler;

    .line 851
    .line 852
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 853
    .line 854
    .line 855
    iput-object p2, p0, Lb7/t0;->P0:Landroid/os/Handler;

    .line 856
    .line 857
    new-instance v2, Lb7/c0;

    .line 858
    .line 859
    invoke-direct {v2, p0, v3}, Lb7/c0;-><init>(Lb7/t0;I)V

    .line 860
    .line 861
    .line 862
    iput-object v2, p0, Lb7/t0;->Q0:Lb7/c0;

    .line 863
    .line 864
    const-wide/16 v3, 0x64

    .line 865
    .line 866
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    .line 868
    .line 869
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 870
    .line 871
    const-string v2, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 872
    .line 873
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object p2

    .line 877
    const-string v3, "1"

    .line 878
    .line 879
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result p2

    .line 883
    const-string v3, "no"

    .line 884
    .line 885
    const-string v4, "ms"

    .line 886
    .line 887
    const-string v5, "No"

    .line 888
    .line 889
    if-eqz p2, :cond_9

    .line 890
    .line 891
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 892
    .line 893
    const-string v2, "btn_epg"

    .line 894
    .line 895
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object p2

    .line 899
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    move-result p2

    .line 903
    if-eqz p2, :cond_8

    .line 904
    .line 905
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 906
    .line 907
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 908
    .line 909
    .line 910
    :cond_8
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 911
    .line 912
    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object p2

    .line 916
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result p2

    .line 920
    if-eqz p2, :cond_11

    .line 921
    .line 922
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 923
    .line 924
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_6

    .line 928
    .line 929
    :cond_9
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 930
    .line 931
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object p2

    .line 935
    const-string v7, "2"

    .line 936
    .line 937
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result p2

    .line 941
    if-eqz p2, :cond_b

    .line 942
    .line 943
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 944
    .line 945
    const-string v2, "btn_epg2"

    .line 946
    .line 947
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object p2

    .line 951
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result p2

    .line 955
    if-eqz p2, :cond_a

    .line 956
    .line 957
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 958
    .line 959
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 960
    .line 961
    .line 962
    :cond_a
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 963
    .line 964
    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object p2

    .line 968
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result p2

    .line 972
    if-eqz p2, :cond_11

    .line 973
    .line 974
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 975
    .line 976
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_6

    .line 980
    .line 981
    :cond_b
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 982
    .line 983
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object p2

    .line 987
    const-string v7, "3"

    .line 988
    .line 989
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result p2

    .line 993
    if-eqz p2, :cond_d

    .line 994
    .line 995
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 996
    .line 997
    const-string v2, "btn_epg3"

    .line 998
    .line 999
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p2

    .line 1003
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result p2

    .line 1007
    if-eqz p2, :cond_c

    .line 1008
    .line 1009
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 1010
    .line 1011
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    .line 1013
    .line 1014
    :cond_c
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1015
    .line 1016
    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p2

    .line 1020
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result p2

    .line 1024
    if-eqz p2, :cond_11

    .line 1025
    .line 1026
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 1027
    .line 1028
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_6

    .line 1032
    :cond_d
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1033
    .line 1034
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    const-string v7, "4"

    .line 1039
    .line 1040
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result p2

    .line 1044
    if-eqz p2, :cond_f

    .line 1045
    .line 1046
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1047
    .line 1048
    const-string v2, "btn_epg4"

    .line 1049
    .line 1050
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p2

    .line 1054
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result p2

    .line 1058
    if-eqz p2, :cond_e

    .line 1059
    .line 1060
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 1061
    .line 1062
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    .line 1064
    .line 1065
    :cond_e
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1066
    .line 1067
    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p2

    .line 1071
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result p2

    .line 1075
    if-eqz p2, :cond_11

    .line 1076
    .line 1077
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 1078
    .line 1079
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    .line 1081
    .line 1082
    goto :goto_6

    .line 1083
    :cond_f
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1084
    .line 1085
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object p2

    .line 1089
    const-string v2, "5"

    .line 1090
    .line 1091
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    move-result p2

    .line 1095
    if-eqz p2, :cond_11

    .line 1096
    .line 1097
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1098
    .line 1099
    const-string v2, "btn_epg5"

    .line 1100
    .line 1101
    invoke-interface {p2, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object p2

    .line 1105
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result p2

    .line 1109
    if-eqz p2, :cond_10

    .line 1110
    .line 1111
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 1112
    .line 1113
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    .line 1115
    .line 1116
    :cond_10
    iget-object p2, p0, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1117
    .line 1118
    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object p2

    .line 1122
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result p2

    .line 1126
    if-eqz p2, :cond_11

    .line 1127
    .line 1128
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 1129
    .line 1130
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    .line 1132
    .line 1133
    :cond_11
    :goto_6
    sget-object p2, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 1134
    .line 1135
    const-string v0, "yes"

    .line 1136
    .line 1137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result p2

    .line 1141
    if-eqz p2, :cond_12

    .line 1142
    .line 1143
    iget-object p2, p0, Lb7/t0;->X0:Landroid/widget/ImageButton;

    .line 1144
    .line 1145
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    .line 1147
    .line 1148
    iget-object p2, p0, Lb7/t0;->S0:Landroid/widget/ImageButton;

    .line 1149
    .line 1150
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    .line 1152
    .line 1153
    :cond_12
    return-object p1
.end method

.method public final z()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isORPlayerHomeFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lb7/t0;->Q0:Lb7/c0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lb7/t0;->P0:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lb7/t0;->I1:Lb7/c0;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lb7/t0;->H1:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lb7/t0;->H1:Landroid/os/Handler;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
