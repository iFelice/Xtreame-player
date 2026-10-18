.class public final Lb7/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/AlertDialog;

.field public final synthetic I:Lpe/hf/black20/ParentalControlActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/U0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/U0;->I:Lpe/hf/black20/ParentalControlActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/U0;->H:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lb7/U0;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/U0;->H:Landroid/app/AlertDialog;

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
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iget-object p1, p0, Lb7/U0;->I:Lpe/hf/black20/ParentalControlActivity;

    .line 17
    .line 18
    iget-object v1, p1, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 19
    .line 20
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->f(Landroid/app/Activity;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Master Parental Password is ---- "

    .line 25
    .line 26
    const-string v3, "XCIPTV_TAG"

    .line 27
    .line 28
    invoke-static {v2, v1, v3}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-static {v2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    sget-object p1, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 40
    .line 41
    const-string v0, "Old Password is Empty"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    sget-object v2, Lpe/hf/black20/ParentalControlActivity;->Y:Landroid/widget/EditText;

    .line 49
    .line 50
    invoke-static {v2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    sget-object p1, Lpe/hf/black20/ParentalControlActivity;->Y:Landroid/widget/EditText;

    .line 57
    .line 58
    const-string v0, "New Password is Empty"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, p1, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    const-string v3, "parental_contorl"

    .line 67
    .line 68
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v4, "ORT_PARENTAL_CONTROL"

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v5, p1, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v2, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 88
    .line 89
    .line 90
    :cond_2
    sget-object v2, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "0000"

    .line 105
    .line 106
    invoke-virtual {v5, v4, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    sget-object v2, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "Old password is incorrect!"

    .line 134
    .line 135
    invoke-static {p1, v0}, Lpe/hf/black20/ParentalControlActivity;->a(Lpe/hf/black20/ParentalControlActivity;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    :goto_0
    iget-object v1, p1, Lpe/hf/black20/ParentalControlActivity;->H:Landroid/content/SharedPreferences;

    .line 140
    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget-object v2, Lpe/hf/black20/ParentalControlActivity;->Y:Landroid/widget/EditText;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    const-string v2, "parental_recovery"

    .line 159
    .line 160
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    .line 165
    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    .line 171
    .line 172
    const-string v0, "Password has been changed successfully!"

    .line 173
    .line 174
    invoke-static {p1, v0}, Lpe/hf/black20/ParentalControlActivity;->a(Lpe/hf/black20/ParentalControlActivity;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
