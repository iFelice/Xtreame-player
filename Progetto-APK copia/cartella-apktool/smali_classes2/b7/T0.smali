.class public final Lb7/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/ParentalControlActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/T0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/T0;->H:Lpe/hf/black20/ParentalControlActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/T0;->G:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lb7/T0;->H:Lpe/hf/black20/ParentalControlActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const v4, 0x7f0e0124

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 37
    .line 38
    const-string v5, "#4f000000"

    .line 39
    .line 40
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const v5, 0x7f0b0584

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4, p1, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/widget/TextView;

    .line 55
    .line 56
    const v3, 0x7f0b0572

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/widget/TextView;

    .line 64
    .line 65
    const v3, 0x7f0b055d

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/widget/TextView;

    .line 73
    .line 74
    const v3, 0x7f0b0555

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .line 83
    const v3, 0x7f0b01c9

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroid/widget/EditText;

    .line 91
    .line 92
    sput-object v3, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 93
    .line 94
    const v3, 0x7f0b01c8

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroid/widget/EditText;

    .line 102
    .line 103
    sput-object v3, Lpe/hf/black20/ParentalControlActivity;->Y:Landroid/widget/EditText;

    .line 104
    .line 105
    const v3, 0x7f0b00b8

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroid/widget/Button;

    .line 113
    .line 114
    new-instance v4, Lb7/U0;

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-direct {v4, v2, p1, v5}, Lb7/U0;-><init>(Lpe/hf/black20/ParentalControlActivity;Landroid/app/AlertDialog;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    const v3, 0x7f0b00b0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/widget/Button;

    .line 131
    .line 132
    const-string v3, "Cancel"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    new-instance v3, Lb7/U0;

    .line 138
    .line 139
    invoke-direct {v3, v2, p1, v0}, Lb7/U0;-><init>(Lpe/hf/black20/ParentalControlActivity;Landroid/app/AlertDialog;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_0
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 150
    .line 151
    const-string v3, "pc_lock"

    .line 152
    .line 153
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v1, "yes"

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object v4, v2, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 164
    .line 165
    const-string v5, "ORT_PARENTAL_CONTROL_STATUS"

    .line 166
    .line 167
    if-eqz p1, :cond_0

    .line 168
    .line 169
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 170
    .line 171
    const-string v1, "no"

    .line 172
    .line 173
    invoke-static {p1, v3, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 177
    .line 178
    const v1, 0x7f1301f4

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 189
    .line 190
    const-string v1, "#70E089"

    .line 191
    .line 192
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v1, "unlocked"

    .line 204
    .line 205
    invoke-virtual {p1, v5, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 210
    .line 211
    invoke-static {p1, v3, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 215
    .line 216
    const v1, 0x7f1301f5

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->M:Landroid/widget/TextView;

    .line 227
    .line 228
    const-string v1, "#FF5733"

    .line 229
    .line 230
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const-string v1, "locked"

    .line 242
    .line 243
    invoke-virtual {p1, v5, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 244
    .line 245
    .line 246
    :goto_0
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
