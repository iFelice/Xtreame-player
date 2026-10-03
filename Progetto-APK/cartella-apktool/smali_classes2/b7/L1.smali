.class public final Lb7/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/AlertDialog;

.field public final synthetic I:Lpe/hf/black20/UsersHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/UsersHistoryActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/L1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/L1;->I:Lpe/hf/black20/UsersHistoryActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/L1;->H:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/L1;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/L1;->H:Landroid/app/AlertDialog;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->a0:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->a0:Landroid/widget/EditText;

    .line 21
    .line 22
    const-string v0, "Name is Empty"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 38
    .line 39
    const-string v0, "Username is Empty"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 55
    .line 56
    const-string v0, "Password is Empty"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_2
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->d0:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget-object p1, Lpe/hf/black20/UsersHistoryActivity;->d0:Landroid/widget/EditText;

    .line 72
    .line 73
    const-string v0, "Server name is Empty"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lb7/L1;->I:Lpe/hf/black20/UsersHistoryActivity;

    .line 81
    .line 82
    iget-object v1, p1, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "xtreamcodes"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v2, "XC"

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object v1, p1, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, "m3u"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    const-string v2, "M3U"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object v1, p1, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 109
    .line 110
    const-string v3, "ezserver"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    const-string v2, "EZS"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    iget-object v1, p1, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 122
    .line 123
    const-string v3, "otr"

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    const-string v2, "OTR"

    .line 132
    .line 133
    :cond_7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    sget-object v3, Lpe/hf/black20/UsersHistoryActivity;->a0:Landroid/widget/EditText;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, " ("

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ")"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v2, p1, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 169
    .line 170
    sget-object v3, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    sget-object v4, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    sget-object v5, Lpe/hf/black20/UsersHistoryActivity;->d0:Landroid/widget/EditText;

    .line 199
    .line 200
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v2, v1, v3, v4, v5}, Lc7/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lpe/hf/black20/UsersHistoryActivity;->d()V

    .line 219
    .line 220
    .line 221
    :goto_1
    return-void

    .line 222
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
