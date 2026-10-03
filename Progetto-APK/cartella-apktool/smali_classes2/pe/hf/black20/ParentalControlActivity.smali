.class public Lpe/hf/black20/ParentalControlActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static X:Landroid/widget/EditText;

.field public static Y:Landroid/widget/EditText;


# instance fields
.field public final G:Lpe/hf/black20/ParentalControlActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Lh7/i;

.field public J:Lc7/b;

.field public K:Landroid/widget/Button;

.field public L:Landroid/widget/Button;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/ListView;

.field public O:Landroid/widget/ListView;

.field public P:Landroid/widget/ListView;

.field public Q:Landroid/widget/ProgressBar;

.field public R:Ljava/util/ArrayList;

.field public S:Ljava/util/ArrayList;

.field public T:Ljava/util/ArrayList;

.field public U:Lorg/json/JSONArray;

.field public V:Lorg/json/JSONArray;

.field public W:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static a(Lpe/hf/black20/ParentalControlActivity;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

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
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v4, "#4f000000"

    .line 31
    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    const-string v1, "OK"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lb7/U0;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-direct {v1, p0, v0, v2}, Lb7/U0;-><init>(Lpe/hf/black20/ParentalControlActivity;Landroid/app/AlertDialog;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e003e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x1c

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const p1, 0x7f0b028a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const v1, 0x7f0805f0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const v1, 0x7f08053b

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string p1, "pe.hf.black20"

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    new-instance p1, Lc7/d;

    .line 74
    .line 75
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lc7/b;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {p1, v0, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->J:Lc7/b;

    .line 85
    .line 86
    new-instance p1, Lc7/a;

    .line 87
    .line 88
    invoke-direct {p1, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    const-string v3, "Default (XC)"

    .line 92
    .line 93
    const-string v4, "ORT_PROFILE"

    .line 94
    .line 95
    invoke-static {v4, v3, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->I:Lh7/i;

    .line 100
    .line 101
    const p1, 0x7f0b0105

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/Button;

    .line 109
    .line 110
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->L:Landroid/widget/Button;

    .line 111
    .line 112
    const p1, 0x7f0b0115

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/Button;

    .line 120
    .line 121
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->K:Landroid/widget/Button;

    .line 122
    .line 123
    const p1, 0x7f0b0546

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 133
    .line 134
    const p1, 0x7f0b0336

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/widget/ListView;

    .line 142
    .line 143
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->N:Landroid/widget/ListView;

    .line 144
    .line 145
    const p1, 0x7f0b0337

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroid/widget/ListView;

    .line 153
    .line 154
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->O:Landroid/widget/ListView;

    .line 155
    .line 156
    const p1, 0x7f0b0335

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/widget/ListView;

    .line 164
    .line 165
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->P:Landroid/widget/ListView;

    .line 166
    .line 167
    const p1, 0x7f0b03da

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/widget/ProgressBar;

    .line 175
    .line 176
    iput-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->Q:Landroid/widget/ProgressBar;

    .line 177
    .line 178
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 179
    .line 180
    const-string v3, "pc_lock"

    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v3, "no"

    .line 188
    .line 189
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_2

    .line 194
    .line 195
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 196
    .line 197
    const v3, 0x7f1301f4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 208
    .line 209
    const-string v0, "#70E089"

    .line 210
    .line 211
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 220
    .line 221
    const v3, 0x7f1301f5

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 232
    .line 233
    const-string v0, "#FF5733"

    .line 234
    .line 235
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->L:Landroid/widget/Button;

    .line 243
    .line 244
    new-instance v0, Lb7/T0;

    .line 245
    .line 246
    invoke-direct {v0, p0, v1}, Lb7/T0;-><init>(Lpe/hf/black20/ParentalControlActivity;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lpe/hf/black20/ParentalControlActivity;->K:Landroid/widget/Button;

    .line 253
    .line 254
    new-instance v0, Lb7/T0;

    .line 255
    .line 256
    invoke-direct {v0, p0, v2}, Lb7/T0;-><init>(Lpe/hf/black20/ParentalControlActivity;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    new-instance p1, Lb7/V0;

    .line 263
    .line 264
    invoke-direct {p1, p0, v4}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    new-array v0, v1, [Ljava/lang/Void;

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
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
    const-string v2, "ORT_isParentalControlActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ORT_isParentalControlActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
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
    const-string v2, "ORT_isParentalControlActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method
