.class public final synthetic Lb7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/AlertDialog;

.field public final synthetic I:Landroid/app/Activity;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lb7/c;->G:I

    iput-object p1, p0, Lb7/c;->I:Landroid/app/Activity;

    iput-object p2, p0, Lb7/c;->H:Landroid/app/AlertDialog;

    iput-object p3, p0, Lb7/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lb7/c;->G:I

    iput-object p1, p0, Lb7/c;->I:Landroid/app/Activity;

    iput-object p2, p0, Lb7/c;->J:Ljava/lang/Object;

    iput-object p3, p0, Lb7/c;->H:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/c;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/c;->H:Landroid/app/AlertDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lb7/c;->J:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lb7/c;->I:Landroid/app/Activity;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Lpe/hf/black20/RecordsActivity;

    .line 13
    .line 14
    check-cast v1, Landroid/widget/TextView;

    .line 15
    .line 16
    sget-object p1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v2, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "rec_path"

    .line 45
    .line 46
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    const-string p1, "rec_path_storage"

    .line 50
    .line 51
    const-string v3, "Internal Location is Selected - "

    .line 52
    .line 53
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 60
    .line 61
    .line 62
    iget-object p1, v2, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 63
    .line 64
    const-string v0, "Internal Storge is Selected"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_0
    check-cast v2, Lpe/hf/black20/ProgramRemindersActivity;

    .line 71
    .line 72
    check-cast v1, Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, v2, Lpe/hf/black20/ProgramRemindersActivity;->I:Lc7/c;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :try_start_0
    const-string v3, "program_reminds"

    .line 81
    .line 82
    const-string v4, "id = ?"

    .line 83
    .line 84
    filled-new-array {v1}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "ORT_isItRequiresToRunProgramReminderService"

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-virtual {p1, v1, v3}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lpe/hf/black20/ProgramRemindersActivity;->b()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :pswitch_1
    check-cast v2, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 117
    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    .line 127
    .line 128
    iget-object p1, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 129
    .line 130
    const-string v0, "last_msg_display"

    .line 131
    .line 132
    invoke-static {p1, v0, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_2
    check-cast v2, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 137
    .line 138
    check-cast v1, Landroid/widget/EditText;

    .line 139
    .line 140
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v3, ""

    .line 154
    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const-string v4, "Invalid URL!"

    .line 160
    .line 161
    if-eqz p1, :cond_0

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v5, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 176
    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_1

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_1
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 185
    .line 186
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_2

    .line 195
    .line 196
    invoke-static {p1, v3}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_2

    .line 205
    .line 206
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 207
    .line 208
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_0
    nop

    .line 213
    :cond_2
    if-nez v5, :cond_3

    .line 214
    .line 215
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v2, p1}, Lpe/hf/black20/PlayStreamEPGActivity;->v(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    .line 233
    .line 234
    :goto_2
    return-void

    .line 235
    :pswitch_3
    check-cast v2, Lpe/hf/black20/BackupActivity;

    .line 236
    .line 237
    check-cast v1, Landroid/widget/Button;

    .line 238
    .line 239
    sget-object p1, Lpe/hf/black20/BackupActivity;->s0:Landroid/widget/EditText;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sget-object p1, Lpe/hf/black20/BackupActivity;->s0:Landroid/widget/EditText;

    .line 245
    .line 246
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    sget-object p1, Lpe/hf/black20/BackupActivity;->s0:Landroid/widget/EditText;

    .line 253
    .line 254
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 255
    .line 256
    const v1, 0x7f1301f8

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_4
    sget-object p1, Lpe/hf/black20/BackupActivity;->s0:Landroid/widget/EditText;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iput-object p1, v2, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 280
    .line 281
    .line 282
    iget-object p1, v2, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 283
    .line 284
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 289
    .line 290
    .line 291
    iget-object p1, v2, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    .line 295
    .line 296
    iget-boolean p1, v2, Lpe/hf/black20/BackupActivity;->q0:Z

    .line 297
    .line 298
    const/4 v1, 0x0

    .line 299
    if-eqz p1, :cond_5

    .line 300
    .line 301
    iput-object v1, v2, Lpe/hf/black20/BackupActivity;->c0:Lb7/e;

    .line 302
    .line 303
    new-instance p1, Lb7/e;

    .line 304
    .line 305
    invoke-direct {p1, v2}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;)V

    .line 306
    .line 307
    .line 308
    iput-object p1, v2, Lpe/hf/black20/BackupActivity;->c0:Lb7/e;

    .line 309
    .line 310
    new-array v0, v0, [Ljava/lang/Void;

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_5
    new-instance p1, Lb7/e;

    .line 317
    .line 318
    invoke-direct {p1, v2, v1}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;Lb7/d;)V

    .line 319
    .line 320
    .line 321
    new-array v0, v0, [Ljava/lang/Void;

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    .line 325
    .line 326
    :goto_3
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
