.class public Lpe/hf/black20/updatecontents/EZServerUpdateContents;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public H:Lc7/a;

.field public I:Lc7/d;

.field public J:Lh7/i;

.field public final K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

.field public L:Landroid/widget/Button;

.field public M:Ljava/util/ArrayList;

.field public N:Ljava/util/ArrayList;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/ArrayList;

.field public Q:Ljava/util/ArrayList;

.field public R:Ljava/util/ArrayList;

.field public S:Lorg/json/JSONArray;

.field public T:Lorg/json/JSONArray;

.field public U:Lorg/json/JSONArray;

.field public V:Lorg/json/JSONArray;

.field public W:Lorg/json/JSONArray;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:I

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/ProgressBar;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Z

.field public i0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 5
    .line 6
    const-string v0, "8000"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 12
    .line 13
    const-string v0, "yes"

    .line 14
    .line 15
    iput-object v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->f0:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->h0:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->i0:Z

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v5, "#99000000"

    .line 31
    .line 32
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v5, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0b014f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    const v1, 0x7f1301ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ll/c;

    .line 71
    .line 72
    const/16 v1, 0x13

    .line 73
    .line 74
    invoke-direct {v0, v1, p0, v2}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->f0:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "yes"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "ORT_PROCESS_STATUS"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0052

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const-string p1, "-----------Calling EZServerUpdateContents---------------"

    .line 11
    .line 12
    const-string v0, "XCIPTV_TAG"

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0b028a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 27
    .line 28
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const v2, 0x7f0805f0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v2, 0x7f08053b

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const-string p1, "pe.hf.black20"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    new-instance p1, Lc7/a;

    .line 57
    .line 58
    invoke-direct {p1, v1, v2}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->H:Lc7/a;

    .line 62
    .line 63
    new-instance p1, Lc7/d;

    .line 64
    .line 65
    invoke-direct {p1, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 69
    .line 70
    new-instance p1, Lc7/b;

    .line 71
    .line 72
    invoke-direct {p1, v1, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->H:Lc7/a;

    .line 76
    .line 77
    const-string v3, "Default (XC)"

    .line 78
    .line 79
    const-string v4, "ORT_PROFILE"

    .line 80
    .line 81
    invoke-static {v4, v3, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 86
    .line 87
    const p1, 0x7f0b058a

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a0:Landroid/widget/TextView;

    .line 97
    .line 98
    const p1, 0x7f0b0594

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->b0:Landroid/widget/TextView;

    .line 108
    .line 109
    const p1, 0x7f0b056f

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->d0:Landroid/widget/TextView;

    .line 119
    .line 120
    const p1, 0x7f0b0541

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 130
    .line 131
    const p1, 0x7f0b00b0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    .line 140
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 141
    .line 142
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 143
    .line 144
    iget-object p1, p1, Lh7/i;->e:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v3, ":"

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    aget-object v5, p1, v2

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const/4 v3, 0x1

    .line 170
    aget-object p1, p1, v3

    .line 171
    .line 172
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Y:Ljava/lang/String;

    .line 180
    .line 181
    const p1, 0x7f0b03d8

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroid/widget/ProgressBar;

    .line 189
    .line 190
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->e0:Landroid/widget/ProgressBar;

    .line 191
    .line 192
    const/16 v4, 0x8

    .line 193
    .line 194
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const-string v4, "EZServerUpdateContents JobScheduler is Not Running"

    .line 202
    .line 203
    const-string v5, "EZServerUpdateContents JobScheduler is Running"

    .line 204
    .line 205
    if-eqz p1, :cond_5

    .line 206
    .line 207
    const-string p1, "no"

    .line 208
    .line 209
    iput-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->f0:Ljava/lang/String;

    .line 210
    .line 211
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 217
    .line 218
    const v6, 0x7f130202

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    const-string v6, "ORT_PROCESS_STATUS"

    .line 233
    .line 234
    invoke-virtual {p1, v2, v6}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 238
    .line 239
    invoke-static {p1}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_1

    .line 244
    .line 245
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Lpe/hf/black20/CategoriesActivity;->m(Landroid/app/Activity;)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :goto_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p1, v6}, LQ5/a;->b(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_4

    .line 264
    .line 265
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 266
    .line 267
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object v1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 272
    .line 273
    const-string v7, "tvvodseries_dl_time"

    .line 274
    .line 275
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_2

    .line 280
    .line 281
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    .line 287
    .line 288
    :cond_2
    iget-object v1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 289
    .line 290
    const-string v7, "epg_dl_time"

    .line 291
    .line 292
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_3

    .line 297
    .line 298
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    .line 304
    .line 305
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1, v3, v6}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 313
    .line 314
    .line 315
    new-instance p1, Ll7/b;

    .line 316
    .line 317
    invoke-direct {p1, p0, v2}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    .line 318
    .line 319
    .line 320
    new-array v1, v2, [Ljava/lang/Void;

    .line 321
    .line 322
    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_4
    const p1, 0x7f1301a7

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p0, p1}, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_5
    const-string p1, "Please check your internet connection."

    .line 338
    .line 339
    invoke-virtual {p0, p1}, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 343
    .line 344
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 348
    .line 349
    const v2, 0x7f1301b9

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    :goto_2
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 360
    .line 361
    new-instance v1, Lf/c;

    .line 362
    .line 363
    const/16 v2, 0x19

    .line 364
    .line 365
    invoke-direct {v1, p0, v2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 372
    .line 373
    invoke-static {p1}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_6

    .line 378
    .line 379
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    invoke-static {p1}, Lpe/hf/black20/CategoriesActivity;->m(Landroid/app/Activity;)V

    .line 383
    .line 384
    .line 385
    goto :goto_3

    .line 386
    :cond_6
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :goto_3
    return-void
.end method
