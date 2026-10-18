.class public Lpe/hf/black20/ProgramRemindersActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final G:Lpe/hf/black20/ProgramRemindersActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Lc7/c;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Lorg/json/JSONArray;

.field public M:Landroid/widget/ListView;

.field public N:Lh7/i;

.field public O:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

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
    return-void
.end method

.method public static a(Lpe/hf/black20/ProgramRemindersActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0128

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
    const-string v4, "#99000000"

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
    const v4, 0x7f0b0114

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/Button;

    .line 47
    .line 48
    const v3, 0x7f0b00b0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/Button;

    .line 56
    .line 57
    const v4, 0x7f0b0108

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/widget/Button;

    .line 65
    .line 66
    const-string v5, "Watch Live"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    const v5, 0x7f0b0586

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const v6, 0x7f130085

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, "\n"

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Ll/c;

    .line 111
    .line 112
    const/16 v1, 0xe

    .line 113
    .line 114
    invoke-direct {p1, v1, p0, v0}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lb7/b;

    .line 121
    .line 122
    const/4 v1, 0x5

    .line 123
    invoke-direct {p1, v0, v1}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lb7/c;

    .line 130
    .line 131
    const/4 v1, 0x3

    .line 132
    invoke-direct {p1, p0, p2, v0, v1}, Lb7/c;-><init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/app/AlertDialog;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->I:Lc7/c;

    .line 9
    .line 10
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "ORT_PROFILE_ID"

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lc7/c;->a0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->K:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-object v3, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v5, "direct_source"

    .line 43
    .line 44
    const-string v6, "pr_status"

    .line 45
    .line 46
    const-string v7, "end_time"

    .line 47
    .line 48
    const-string v8, "start_time"

    .line 49
    .line 50
    const-string v9, "category_name"

    .line 51
    .line 52
    const-string v10, "category_id"

    .line 53
    .line 54
    const-string v11, "stream_id"

    .line 55
    .line 56
    const-string v12, "show_desc"

    .line 57
    .line 58
    const-string v13, "show_name"

    .line 59
    .line 60
    const-string v14, "channel_name"

    .line 61
    .line 62
    const-string v15, "profile_id"

    .line 63
    .line 64
    const-string v1, "id"

    .line 65
    .line 66
    if-ge v2, v3, :cond_0

    .line 67
    .line 68
    new-instance v3, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    move-object/from16 v16, v4

    .line 74
    .line 75
    iget-object v4, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lh7/e;

    .line 82
    .line 83
    iget-object v4, v4, Lh7/e;->a:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lh7/e;

    .line 95
    .line 96
    iget-object v1, v1, Lh7/e;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lh7/e;

    .line 108
    .line 109
    iget-object v1, v1, Lh7/e;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lh7/e;

    .line 121
    .line 122
    iget-object v1, v1, Lh7/e;->d:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lh7/e;

    .line 134
    .line 135
    iget-object v1, v1, Lh7/e;->e:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v3, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lh7/e;

    .line 147
    .line 148
    iget-object v1, v1, Lh7/e;->f:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v3, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lh7/e;

    .line 160
    .line 161
    iget-object v1, v1, Lh7/e;->g:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lh7/e;

    .line 173
    .line 174
    iget-object v1, v1, Lh7/e;->h:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lh7/e;

    .line 186
    .line 187
    iget-object v1, v1, Lh7/e;->i:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lh7/e;

    .line 199
    .line 200
    iget-object v1, v1, Lh7/e;->j:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lh7/e;

    .line 212
    .line 213
    iget-object v1, v1, Lh7/e;->k:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Lh7/e;

    .line 225
    .line 226
    iget-object v1, v1, Lh7/e;->l:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->K:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    .line 238
    move-object/from16 v4, v16

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_0
    move-object/from16 v16, v4

    .line 243
    .line 244
    iget-object v2, v0, Lpe/hf/black20/ProgramRemindersActivity;->J:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-nez v2, :cond_1

    .line 251
    .line 252
    move-object/from16 v2, v16

    .line 253
    .line 254
    invoke-static {v1, v2, v15, v2}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v3, "Program Reminders"

    .line 259
    .line 260
    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const v3, 0x7f130241

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const-string v3, "Help"

    .line 286
    .line 287
    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    const v3, 0x7f1300e5

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Lpe/hf/black20/ProgramRemindersActivity;->K:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    .line 312
    .line 313
    iget-object v2, v0, Lpe/hf/black20/ProgramRemindersActivity;->K:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 316
    .line 317
    .line 318
    iput-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->L:Lorg/json/JSONArray;

    .line 319
    .line 320
    new-instance v1, Lb7/k1;

    .line 321
    .line 322
    iget-object v2, v0, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

    .line 323
    .line 324
    iget-object v3, v0, Lpe/hf/black20/ProgramRemindersActivity;->K:Ljava/util/ArrayList;

    .line 325
    .line 326
    const/4 v4, 0x0

    .line 327
    invoke-direct {v1, v4, v2, v3}, Lb7/k1;-><init>(ILandroid/app/Activity;Ljava/util/ArrayList;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v0, Lpe/hf/black20/ProgramRemindersActivity;->M:Landroid/widget/ListView;

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->M:Landroid/widget/ListView;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lpe/hf/black20/ProgramRemindersActivity;->M:Landroid/widget/ListView;

    .line 341
    .line 342
    new-instance v2, Lb7/f;

    .line 343
    .line 344
    const/16 v3, 0x11

    .line 345
    .line 346
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 350
    .line 351
    .line 352
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0044

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
    iget-object v0, p0, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

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
    iput-object p1, p0, Lpe/hf/black20/ProgramRemindersActivity;->H:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    new-instance p1, Lc7/c;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {p1, v0, v2}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lpe/hf/black20/ProgramRemindersActivity;->I:Lc7/c;

    .line 56
    .line 57
    new-instance p1, Lc7/d;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lc7/b;

    .line 63
    .line 64
    invoke-direct {p1, v0, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lc7/a;

    .line 68
    .line 69
    invoke-direct {p1, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    const-string v0, "Default (XC)"

    .line 73
    .line 74
    const-string v1, "ORT_PROFILE"

    .line 75
    .line 76
    invoke-static {v1, v0, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lpe/hf/black20/ProgramRemindersActivity;->N:Lh7/i;

    .line 81
    .line 82
    const p1, 0x7f0b0329

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/ListView;

    .line 90
    .line 91
    iput-object p1, p0, Lpe/hf/black20/ProgramRemindersActivity;->M:Landroid/widget/ListView;

    .line 92
    .line 93
    invoke-virtual {p0}, Lpe/hf/black20/ProgramRemindersActivity;->b()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
