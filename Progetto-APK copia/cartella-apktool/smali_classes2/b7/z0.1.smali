.class public final Lb7/z0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/ORPlayerMainActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ORPlayerMainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb7/z0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb7/z0;->b:Lpe/hf/black20/ORPlayerMainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget p1, p0, Lb7/z0;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/z0;->b:Lpe/hf/black20/ORPlayerMainActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "FirstReceiver"

    .line 9
    .line 10
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "finish_alert"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "load_tv_fragment"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "ORT_WHICH_CAT"

    .line 50
    .line 51
    const-string v1, "TV"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, LY/v;->X:Lf/S;

    .line 57
    .line 58
    invoke-virtual {p1}, Lf/S;->R()LY/K;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance p2, LY/a;

    .line 66
    .line 67
    invoke-direct {p2, p1}, LY/a;-><init>(LY/K;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, v0, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 71
    .line 72
    new-instance p1, Lb7/M0;

    .line 73
    .line 74
    invoke-direct {p1}, Lb7/M0;-><init>()V

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0b02d8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1, p1}, LY/a;->g(ILY/s;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v0, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    invoke-virtual {p1, p2}, LY/a;->d(Z)I

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void

    .line 90
    :pswitch_0
    const-string p1, "what"

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v1, "msg"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    const-string p1, "success"

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string p2, "1"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :cond_2
    const-string v1, "pr"

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_3

    .line 136
    .line 137
    const-string p1, "title"

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v1, "desc"

    .line 144
    .line 145
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "time"

    .line 150
    .line 151
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 156
    .line 157
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const v4, 0x7f0e0126

    .line 162
    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 170
    .line 171
    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 183
    .line 184
    const-string v6, "#99000000"

    .line 185
    .line 186
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 191
    .line 192
    .line 193
    const v6, 0x7f0b0584

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v5, v2, v3, v6}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Landroid/widget/TextView;

    .line 201
    .line 202
    const v5, 0x7f0b0527

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Landroid/widget/TextView;

    .line 210
    .line 211
    const v6, 0x7f0b057e

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    const p1, 0x7f0b014f

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroid/widget/Button;

    .line 237
    .line 238
    new-instance p2, Lb7/y0;

    .line 239
    .line 240
    const/4 v1, 0x2

    .line 241
    invoke-direct {p2, v0, v2, v1}, Lb7/y0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;Landroid/app/AlertDialog;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    const p2, 0x7f0b014b

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Landroid/widget/Button;

    .line 255
    .line 256
    new-instance v1, Lb7/y0;

    .line 257
    .line 258
    const/4 v3, 0x3

    .line 259
    invoke-direct {v1, v0, v2, v3}, Lb7/y0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;Landroid/app/AlertDialog;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    const/4 p2, 0x1

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 273
    .line 274
    .line 275
    :cond_3
    :goto_0
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
