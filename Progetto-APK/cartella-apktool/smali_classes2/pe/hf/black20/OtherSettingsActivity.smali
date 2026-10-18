.class public Lpe/hf/black20/OtherSettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public final H:Lpe/hf/black20/OtherSettingsActivity;

.field public I:[Ljava/lang/String;

.field public J:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/OtherSettingsActivity;->H:Lpe/hf/black20/OtherSettingsActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpe/hf/black20/OtherSettingsActivity;->I:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0e003c

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x1c

    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const v1, 0x7f0b028a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .line 45
    iget-object v2, v0, Lpe/hf/black20/OtherSettingsActivity;->H:Lpe/hf/black20/OtherSettingsActivity;

    .line 46
    .line 47
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const v3, 0x7f0805f0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const v3, 0x7f08053b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    const-string v1, "pe.hf.black20"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->G:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    const v1, 0x7f0b032d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/ListView;

    .line 83
    .line 84
    iput-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->J:Landroid/widget/ListView;

    .line 85
    .line 86
    iget-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->G:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    const-string v3, "logs"

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v3, "no"

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const v3, 0x7f130174

    .line 102
    .line 103
    .line 104
    const v4, 0x7f13011c

    .line 105
    .line 106
    .line 107
    const v5, 0x7f130190

    .line 108
    .line 109
    .line 110
    const v6, 0x7f130184

    .line 111
    .line 112
    .line 113
    const v7, 0x7f130026

    .line 114
    .line 115
    .line 116
    const v8, 0x7f1300e4

    .line 117
    .line 118
    .line 119
    const v9, 0x7f13011b

    .line 120
    .line 121
    .line 122
    const v10, 0x7f1301ac

    .line 123
    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v16

    .line 147
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v17

    .line 151
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v18

    .line 155
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v19

    .line 159
    const-string v13, "Load EPG"

    .line 160
    .line 161
    const-string v20, "Catchup EPG Timeshift"

    .line 162
    .line 163
    const-string v21, "OTR Layout"

    .line 164
    .line 165
    const-string v22, "Open Source Licenses"

    .line 166
    .line 167
    filled-new-array/range {v11 .. v22}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->I:[Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const v10, 0x7f1301a9

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    const-string v4, "Load EPG"

    .line 214
    .line 215
    const-string v15, "Catchup EPG Timeshift"

    .line 216
    .line 217
    const-string v16, "OTR Layout"

    .line 218
    .line 219
    const-string v17, "Open Source Licenses"

    .line 220
    .line 221
    move-object v2, v1

    .line 222
    move-object v3, v9

    .line 223
    move-object v5, v8

    .line 224
    move-object v6, v7

    .line 225
    move-object v7, v10

    .line 226
    move-object v8, v11

    .line 227
    move-object v9, v12

    .line 228
    move-object v10, v13

    .line 229
    move-object v11, v14

    .line 230
    move-object v12, v15

    .line 231
    move-object/from16 v13, v16

    .line 232
    .line 233
    move-object/from16 v14, v17

    .line 234
    .line 235
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iput-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->I:[Ljava/lang/String;

    .line 240
    .line 241
    :goto_1
    new-instance v1, Lb7/N;

    .line 242
    .line 243
    iget-object v2, v0, Lpe/hf/black20/OtherSettingsActivity;->I:[Ljava/lang/String;

    .line 244
    .line 245
    const/4 v3, 0x1

    .line 246
    invoke-direct {v1, v0, v2, v3}, Lb7/N;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v0, Lpe/hf/black20/OtherSettingsActivity;->J:Landroid/widget/ListView;

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lpe/hf/black20/OtherSettingsActivity;->J:Landroid/widget/ListView;

    .line 255
    .line 256
    new-instance v2, Lb7/f;

    .line 257
    .line 258
    const/16 v3, 0xd

    .line 259
    .line 260
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/Locale;

    .line 17
    .line 18
    iget-object v2, p0, Lpe/hf/black20/OtherSettingsActivity;->G:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v3, "language"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
