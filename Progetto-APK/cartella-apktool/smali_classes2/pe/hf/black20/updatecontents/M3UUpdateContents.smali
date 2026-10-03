.class public Lpe/hf/black20/updatecontents/M3UUpdateContents;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public H:Lc7/a;

.field public I:Lc7/d;

.field public J:Lh7/i;

.field public final K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

.field public L:Landroid/widget/Button;

.field public M:Ljava/util/ArrayList;

.field public N:Ljava/util/ArrayList;

.field public O:Lorg/json/JSONArray;

.field public P:[Ljava/lang/String;

.field public Q:I

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/ProgressBar;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->Q:I

    .line 8
    .line 9
    const-string v0, "yes"

    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->T:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

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
    const/16 v1, 0x14

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
    iget-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->T:Ljava/lang/String;

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
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0054

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b028a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 20
    .line 21
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x7f0805f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f08053b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string p1, "pe.hf.black20"

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    new-instance p1, Lc7/a;

    .line 50
    .line 51
    invoke-direct {p1, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->H:Lc7/a;

    .line 55
    .line 56
    new-instance p1, Lc7/d;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->I:Lc7/d;

    .line 62
    .line 63
    new-instance p1, Lc7/b;

    .line 64
    .line 65
    invoke-direct {p1, v0, v1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->H:Lc7/a;

    .line 69
    .line 70
    const-string v2, "Default (XC)"

    .line 71
    .line 72
    const-string v3, "ORT_PROFILE"

    .line 73
    .line 74
    invoke-static {v3, v2, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->J:Lh7/i;

    .line 79
    .line 80
    const p1, 0x7f0b058a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 88
    .line 89
    const p1, 0x7f0b0541

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->R:Landroid/widget/TextView;

    .line 99
    .line 100
    const p1, 0x7f0b00b0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/Button;

    .line 108
    .line 109
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 110
    .line 111
    const p1, 0x7f0b03d8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/ProgressBar;

    .line 119
    .line 120
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->S:Landroid/widget/ProgressBar;

    .line 121
    .line 122
    const/16 v2, 0x8

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    const/4 v2, 0x1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    const-string p1, "no"

    .line 135
    .line 136
    iput-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->T:Ljava/lang/String;

    .line 137
    .line 138
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 144
    .line 145
    const v3, 0x7f130202

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->S:Landroid/widget/ProgressBar;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v3, "ORT_PROCESS_STATUS"

    .line 165
    .line 166
    invoke-virtual {p1, v3}, LQ5/a;->b(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_3

    .line 171
    .line 172
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 179
    .line 180
    const-string v4, "tvvodseries_dl_time"

    .line 181
    .line 182
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    invoke-interface {p1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    .line 194
    .line 195
    :cond_1
    iget-object v0, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 196
    .line 197
    const-string v4, "epg_dl_time"

    .line 198
    .line 199
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_2

    .line 204
    .line 205
    invoke-interface {p1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    .line 211
    .line 212
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v2, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 220
    .line 221
    .line 222
    new-instance p1, Lk3/j;

    .line 223
    .line 224
    invoke-direct {p1, p0}, Lk3/j;-><init>(Lpe/hf/black20/updatecontents/M3UUpdateContents;)V

    .line 225
    .line 226
    .line 227
    new-array v0, v1, [Ljava/lang/Void;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_3
    const p1, 0x7f1301a7

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lpe/hf/black20/updatecontents/M3UUpdateContents;->a(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_4
    const-string p1, "Please check your internet connection."

    .line 245
    .line 246
    invoke-virtual {p0, p1}, Lpe/hf/black20/updatecontents/M3UUpdateContents;->a(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 250
    .line 251
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 255
    .line 256
    const v1, 0x7f1301b9

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 267
    .line 268
    new-instance v0, Lf/c;

    .line 269
    .line 270
    const/16 v1, 0x1a

    .line 271
    .line 272
    invoke-direct {v0, p0, v1}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method
