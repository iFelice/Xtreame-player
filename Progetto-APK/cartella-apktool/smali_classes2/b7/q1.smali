.class public final Lb7/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:Landroid/app/AlertDialog;

.field public final synthetic J:Landroid/widget/TextView;

.field public final synthetic K:Ljava/lang/Object;

.field public final synthetic L:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/Object;Ljava/lang/String;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lb7/q1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/q1;->L:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/q1;->J:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p3, p0, Lb7/q1;->K:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Lb7/q1;->H:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lb7/q1;->I:Landroid/app/AlertDialog;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lb7/q1;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/q1;->I:Landroid/app/AlertDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lb7/q1;->H:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lb7/q1;->L:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v3, p0, Lb7/q1;->K:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v4, p0, Lb7/q1;->J:Landroid/widget/TextView;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-static {v4}, La/r;->s(Landroid/widget/EditText;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "Username is Empty"

    .line 25
    .line 26
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v3, Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-static {v3}, La/r;->s(Landroid/widget/EditText;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string p1, "Password is Empty"

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    check-cast v2, Lpe/hf/black20/UsersHistoryActivity;

    .line 45
    .line 46
    iget-object p1, v2, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    .line 77
    .line 78
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v6, "name"

    .line 82
    .line 83
    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v6, "username"

    .line 87
    .line 88
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v4, "password"

    .line 92
    .line 93
    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v3, "user_history"

    .line 97
    .line 98
    const-string v4, "name = ?"

    .line 99
    .line 100
    filled-new-array {v1}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v3, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lpe/hf/black20/UsersHistoryActivity;->d()V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :pswitch_0
    check-cast v3, [Ljava/io/File;

    .line 123
    .line 124
    const/4 p1, 0x2

    .line 125
    aget-object p1, v3, p1

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    check-cast v2, Lpe/hf/black20/RecordsActivity;

    .line 139
    .line 140
    iget-object p1, v2, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 141
    .line 142
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v3, "rec_path"

    .line 147
    .line 148
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    const-string v1, "rec_path_storage"

    .line 152
    .line 153
    const-string v3, "External2 Location is Selected - "

    .line 154
    .line 155
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    .line 163
    .line 164
    iget-object p1, v2, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 165
    .line 166
    const-string v0, "External2 Storge is Selected"

    .line 167
    .line 168
    invoke-static {p1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
